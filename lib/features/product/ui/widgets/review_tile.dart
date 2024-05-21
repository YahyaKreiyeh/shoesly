import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/features/product/data/models/review.dart';
import 'package:shoesly/features/product/ui/widgets/rating_stars.dart';

class ReviewTile extends StatelessWidget {
  final Review review;
  const ReviewTile({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 30.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/500'),
            backgroundColor: ColorsManager.grey,
            radius: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        review.comment,
                        style: TextStyles.primaryTextBold14,
                      ),
                    ),
                    Text(
                      'Today',
                      style: TextStyles.hintTextRegular12,
                    ),
                  ],
                ),
                verticalSpace(5),
                RatingStars(
                  rating: review.rating.toDouble(),
                ),
                verticalSpace(10),
                Text(
                  'Perfect for keeping your feet dry and warm in damp conditions.',
                  style: TextStyles.primaryTextRegular12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
