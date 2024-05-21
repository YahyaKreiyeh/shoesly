import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shoesly/core/networking/api_service.dart';
import 'package:shoesly/core/networking/dio_factory.dart';
import 'package:shoesly/features/cart/data/repos/cart_repo.dart';
import 'package:shoesly/features/cart/logic/cubit/cart_cubit.dart';
import 'package:shoesly/features/cart/logic/cubit/order_cubit.dart';
import 'package:shoesly/features/discover/data/repos/discover_repo.dart';
import 'package:shoesly/features/discover/logic/cubit/discover_cubit.dart';
import 'package:shoesly/features/product/data/repos/product_repo.dart';
import 'package:shoesly/features/product/logic/color_selector_cubit.dart';
import 'package:shoesly/features/product/logic/image_slider_cubit.dart';
import 'package:shoesly/features/product/logic/product_cubit/product_cubit.dart';
import 'package:shoesly/features/product/logic/quantity_cubit/quantity_cubit.dart';
import 'package:shoesly/features/product/logic/review_cubit/review_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Discover
  getIt.registerFactory<DiscoverCubit>(() => DiscoverCubit(getIt()));
  getIt.registerLazySingleton<DiscoverRepo>(() => DiscoverRepo(getIt()));
  getIt.registerLazySingleton<CartRepo>(() => CartRepo(getIt()));

  // Product
  getIt.registerFactory<ProductCubit>(() => ProductCubit(getIt()));
  getIt.registerFactory<ReviewCubit>(() => ReviewCubit(getIt()));
  getIt.registerFactory<ImageSliderCubit>(() => ImageSliderCubit());
  getIt.registerFactory<ColorSelectorCubit>(() => ColorSelectorCubit());
  getIt.registerFactory<QuantityCubit>(() => QuantityCubit());
  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt()));

  // Cart
  getIt.registerFactory<CartCubit>(() => CartCubit());

  // Order
  getIt.registerFactory<OrderCubit>(() => OrderCubit(getIt()));
}
