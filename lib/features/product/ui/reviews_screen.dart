import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/custom_app_bar.dart';
import 'package:shoesly/features/product/data/models/get_reviews_response.dart';
import 'package:shoesly/features/product/data/models/review.dart';
import 'package:shoesly/features/product/logic/review_cubit/review_cubit.dart';
import 'package:shoesly/features/product/ui/widgets/review_tile.dart';

class ReviewsScreen extends StatefulWidget {
  final int productId;
  final int reviewCount;
  final double averageRating;

  const ReviewsScreen({
    super.key,
    required this.productId,
    required this.averageRating,
    required this.reviewCount,
  });

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  final int selectedIndex = 0;
  static const List<String> filters = [
    'All',
    '5 Stars',
    '4 Stars',
    '3 Stars',
    '2 Stars',
    '1 Star',
  ];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.9 &&
        !context.read<ReviewCubit>().isFetching) {
      context.read<ReviewCubit>().loadMorereviews(widget.productId);
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => _scrollToTop(),
        child: SafeArea(
          child: BlocBuilder<ReviewCubit, ReviewState>(
            builder: (context, state) {
              if (state is ReviewStateLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is ReviewStateError) {
                return Center(child: Text('Error: ${state.error}'));
              } else if (state is ReviewStateSuccess<List<ReviewsResponse>> ||
                  state is ReviewStateLoadingMore<List<ReviewsResponse>>) {
                final reviews = state.maybeWhen(
                  success: (data, _) => data,
                  loadingMore: (data) => data,
                  orElse: () => [],
                );
                final hasReachedMax = state.maybeWhen(
                  success: (_, hasReachedMax) => hasReachedMax,
                  orElse: () => false,
                );
                return CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverToBoxAdapter(
                      child: CustomAppBar(
                        title: 'Review (${widget.reviewCount})',
                        actions: [
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.yellow),
                              horizontalSpace(4.w),
                              Text(
                                widget.averageRating.toString(),
                                style: TextStyles.primaryTextBold14,
                              ),
                              horizontalSpace(15.w),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 30.h,
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: 30.w),
                          scrollDirection: Axis.horizontal,
                          itemCount: filters.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 20.w),
                              child: Text(
                                filters[index],
                                style: selectedIndex == index
                                    ? TextStyles.primaryTextBold20
                                    : TextStyles.hintTextBold20,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: verticalSpace(30),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index >= reviews.length) {
                            if (!hasReachedMax) {
                              context
                                  .read<ReviewCubit>()
                                  .loadMorereviews(widget.productId);
                              return const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          }
                          ReviewsResponse review = reviews[index];
                          return ReviewTile(
                            review: Review(
                              id: review.id,
                              rating: review.rating,
                              comment: review.comment,
                            ),
                          );
                        },
                        childCount: reviews.length + (hasReachedMax ? 0 : 1),
                      ),
                    ),
                  ],
                );
              }
              return const Center(child: Text('No reviews found.'));
            },
          ),
        ),
      ),
    );
  }
}
