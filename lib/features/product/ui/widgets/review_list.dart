import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/features/product/data/models/review.dart';
import 'package:shoesly/features/product/ui/widgets/review_tile.dart';

class ReviewList extends StatelessWidget {
  final List<Review> reviews;

  const ReviewList({
    required this.reviews,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text(
            'Review (${reviews.length})',
            style: TextStyles.primaryTextSemiBold16,
          ),
        ),
        verticalSpace(10),
        ...reviews.map(
          (review) {
            return ReviewTile(
              review: review,
            );
          },
        ),
      ],
    );
  }
}
