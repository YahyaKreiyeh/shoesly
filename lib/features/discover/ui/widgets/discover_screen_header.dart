import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/shopping_bag_icon_button.dart';

class DiscoverScreenHeader extends StatelessWidget {
  const DiscoverScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Discover',
            style: TextStyles.primaryTextBold30,
          ),
          const ShoppingBagIconButton(),
        ],
      ),
    );
  }
}
