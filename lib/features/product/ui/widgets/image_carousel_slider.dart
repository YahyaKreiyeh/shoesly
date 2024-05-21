import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/features/product/logic/image_slider_cubit.dart';
import 'package:shoesly/features/product/ui/widgets/color_selector.dart';

class ImageCarouselSlider extends StatelessWidget {
  final List<String> images;

  const ImageCarouselSlider({
    required this.images,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageSliderCubit(),
      child: BlocBuilder<ImageSliderCubit, int>(
        builder: (context, currentIndex) {
          return Stack(
            children: [
              CarouselSlider.builder(
                itemCount: images.length,
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 300,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    context.read<ImageSliderCubit>().changeImage(index);
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.grey,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 26.h,
                left: 20.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    images.length,
                    (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        width: 8.0,
                        height: 8.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == index
                              ? ColorsManager.black
                              : ColorsManager.hintText,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10.h,
                right: 20.h,
                child: ColorSelector(),
              ),
            ],
          );
        },
      ),
    );
  }
}
