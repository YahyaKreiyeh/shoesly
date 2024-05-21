import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/di/dependency_injection.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/app_outlined_button.dart';
import 'package:shoesly/core/widgets/bottom_nav_bar.dart';
import 'package:shoesly/core/widgets/custom_app_bar.dart';
import 'package:shoesly/core/widgets/shopping_bag_icon_button.dart';
import 'package:shoesly/features/product/data/models/get_product_response.dart';
import 'package:shoesly/features/product/data/models/review_screen_arguments.dart';
import 'package:shoesly/features/product/logic/color_selector_cubit.dart';
import 'package:shoesly/features/product/logic/product_cubit/product_cubit.dart';
import 'package:shoesly/features/product/logic/size_selector_cubit.dart';
import 'package:shoesly/features/product/ui/widgets/image_carousel_slider.dart';
import 'package:shoesly/features/product/ui/widgets/product_description.dart';
import 'package:shoesly/features/product/ui/widgets/quantity_bottom_sheet.dart';
import 'package:shoesly/features/product/ui/widgets/rating_stars.dart';
import 'package:shoesly/features/product/ui/widgets/review_list.dart';
import 'package:shoesly/features/product/ui/widgets/size_selector.dart';

class ProductScreen extends StatelessWidget {
  final int productId;

  const ProductScreen({
    required this.productId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  ProductCubit(getIt())..fetchProduct(productId),
            ),
            BlocProvider(create: (_) => SizeSelectorCubit()),
            BlocProvider(create: (_) => ColorSelectorCubit()),
          ],
          child: const ProductView(),
        ),
      ),
    );
  }
}

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (response) {
            ProductResponse product = response;
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomAppBar(actions: [ShoppingBagIconButton()]),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpace(10),
                              ImageCarouselSlider(images: product.images),
                              verticalSpace(30),
                              Text(
                                product.name,
                                style: TextStyles.primaryTextBold20,
                              ),
                              RatingStars(
                                rating: product.averageRating,
                                reviewCount: product.reviewCount,
                              ),
                              verticalSpace(30),
                              const SizeSelector(),
                              verticalSpace(30),
                              const ProductDescription(),
                              verticalSpace(30),
                            ],
                          ),
                        ),
                        ReviewList(reviews: product.reviews),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              verticalSpace(30),
                              AppOutlinedButton(
                                text: 'SEE ALL REVIEW',
                                onPressed: () => context.pushNamed(
                                  Routes.reviewsScreen,
                                  arguments: ReviewsScreenArguments(
                                    productId: product.id,
                                    averageRating: product.averageRating,
                                    reviewCount: product.reviewCount,
                                  ),
                                ),
                              ),
                              verticalSpace(38),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BottomNavBar(
                  text: 'Price',
                  price: '${product.price}',
                  buttonText: 'ADD TO CART',
                  onPressed: () {
                    final selectedSize =
                        context.read<SizeSelectorCubit>().state;
                    final selectedColor =
                        context.read<ColorSelectorCubit>().state;
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: ColorsManager.white,
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) {
                        return QuantityBottomSheet(
                          product: product,
                          selectedSize: selectedSize,
                          selectedColor: selectedColor,
                        );
                      },
                    );
                  },
                ),
              ],
            );
          },
          error: (error) => Center(child: Text('Error: $error')),
        );
      },
    );
  }
}
