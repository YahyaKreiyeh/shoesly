import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/utils/constants/styles.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: title != null
            ? Text(
                title!,
                style: TextStyles.primaryTextSemiBold16,
              )
            : null,
        centerTitle: true,
        actions: actions,
      ),
    );
  }
}
