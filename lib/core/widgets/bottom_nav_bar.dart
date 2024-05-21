import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/app_elevated_button.dart';

class BottomNavBar extends StatelessWidget {
  final String text;
  final String price;
  final String buttonText;
  final void Function()? onPressed;
  const BottomNavBar({
    super.key,
    required this.text,
    required this.price,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorsManager.white,
        boxShadow: [
          BoxShadow(
            color: ColorsManager.navBarBackground,
            offset: Offset(0, -20),
            blurRadius: 30,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
          vertical: 16.h,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text,
                    style: TextStyles.secondaryTextRegular12,
                  ),
                  Text(
                    '\$$price',
                    style: TextStyles.primaryTextBold20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: AppElevatedButton(
                text: buttonText,
                onPressed: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
