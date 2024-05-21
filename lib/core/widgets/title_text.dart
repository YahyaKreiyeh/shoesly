import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
        bottom: 20.h,
        left: 30.h,
      ),
      child: Text(
        title,
        style: TextStyles.primaryTextSemiBold16,
      ),
    );
  }
}
