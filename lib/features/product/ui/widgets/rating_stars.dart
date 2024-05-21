import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final int? reviewCount;

  const RatingStars({
    required this.rating,
    this.reviewCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBarIndicator(
          rating: rating,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: ColorsManager.yellow,
          ),
          itemPadding: EdgeInsets.symmetric(
            horizontal: 1.w,
          ),
          unratedColor: ColorsManager.divider,
          itemCount: 5,
          itemSize: 12.sp,
          direction: Axis.horizontal,
        ),
        horizontalSpace(4),
        Text(rating.toString(), style: TextStyles.primaryTextBold11),
        horizontalSpace(4),
        if (reviewCount != null)
          Text('($reviewCount Reviews)', style: TextStyles.hintTextRegular11),
      ],
    );
  }
}
