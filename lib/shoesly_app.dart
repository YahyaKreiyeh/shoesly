import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/routing/app_router.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/theme/theme.dart';
import 'package:shoesly/features/cart/logic/cubit/cart_cubit.dart';
import 'package:shoesly/features/product/logic/quantity_cubit/quantity_cubit.dart';

class ShoeslyApp extends StatelessWidget {
  final AppRouter appRouter;

  const ShoeslyApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(create: (context) => QuantityCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          title: 'Shoesly',
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.discoverScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
