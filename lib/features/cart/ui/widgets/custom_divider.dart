import 'package:flutter/material.dart';
import 'package:shoesly/core/utils/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorsManager.divider,
    );
  }
}
