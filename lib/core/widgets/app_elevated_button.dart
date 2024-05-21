import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AppElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        surfaceTintColor: ColorsManager.white,
        overlayColor: ColorsManager.white,
        backgroundColor: ColorsManager.primary,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 12.h,
        ),
      ),
      child: Text(
        text,
        style: TextStyles.whiteBold14,
      ),
    );
  }
}
