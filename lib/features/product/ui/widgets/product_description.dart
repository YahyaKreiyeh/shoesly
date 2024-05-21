import 'package:flutter/material.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Description',
          style: TextStyles.primaryTextSemiBold16,
        ),
        verticalSpace(10),
        Text(
          'Engineered to crush any movement-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair.',
          style: TextStyles.secondaryTextRegular14,
        ),
      ],
    );
  }
}
