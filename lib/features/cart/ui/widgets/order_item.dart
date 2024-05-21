import 'package:flutter/material.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class OrderItem extends StatelessWidget {
  final String title;
  final String detail;
  final String price;
  const OrderItem({
    super.key,
    required this.title,
    required this.detail,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.primaryTextSemiBold16,
        ),
        verticalSpace(10),
        Row(
          children: [
            Expanded(
              child: Text(
                detail,
                style: TextStyles.secondaryTextRegular14,
              ),
            ),
            Text(
              '\$$price',
              style: TextStyles.primaryTextBold14,
            ),
          ],
        ),
      ],
    );
  }
}
