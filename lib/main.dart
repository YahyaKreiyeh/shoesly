import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/di/dependency_injection.dart';
import 'package:shoesly/core/routing/app_router.dart';
import 'package:shoesly/shoesly_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  runApp(
    ShoeslyApp(
      appRouter: AppRouter(),
    ),
  );
}
