import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/di/dependency_injection.dart';
import 'package:shoesly/features/discover/data/models/get_products_response.dart';
import 'package:shoesly/features/discover/logic/cubit/discover_cubit.dart';
import 'package:shoesly/features/discover/ui/widgets/discover_screen_header.dart';
import 'package:shoesly/features/discover/ui/widgets/filter_list.dart';
import 'package:shoesly/features/discover/ui/widgets/floating_button.dart';
import 'package:shoesly/features/discover/ui/widgets/product_item.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<DiscoverCubit>()..fetchInitialProducts(),
          child: const DiscoverView(),
        ),
      ),
      floatingActionButton: const FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class DiscoverView extends StatefulWidget {
  const DiscoverView({super.key});

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom && !context.read<DiscoverCubit>().isFetching) {
      context.read<DiscoverCubit>().loadMoreProducts();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverCubit, DiscoverState>(
      builder: (context, state) {
        if (state is DiscoverLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DiscoverError) {
          return Center(child: Text('Error: ${state.error}'));
        } else if (state is DiscoverSuccess<List<ProductsResponse>> ||
            state is DiscoverLoadingMore<List<ProductsResponse>>) {
          final products = state.maybeWhen(
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
              const SliverToBoxAdapter(
                child: DiscoverScreenHeader(),
              ),
              const SliverToBoxAdapter(
                child: FilterList(),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 30.h,
                    childAspectRatio: 0.65,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index >= products.length) {
                        return const SizedBox.shrink();
                      }
                      return ProductItem(product: products[index]);
                    },
                    childCount: products.length,
                  ),
                ),
              ),
              if (!hasReachedMax)
                const SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
            ],
          );
        }
        return const Center(child: Text('Start discovering products'));
      },
    );
  }
}
