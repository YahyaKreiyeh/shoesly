import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AppOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        overlayColor: ColorsManager.primary,
        surfaceTintColor: ColorsManager.primary,
        backgroundColor: ColorsManager.white,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 12.h,
        ),
        side: const BorderSide(
          color: ColorsManager.colorSelectorBackground,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: TextStyles.primaryTextBold14,
      ),
    );
  }
}
