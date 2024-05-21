import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoesly/core/di/dependency_injection.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/features/cart/data/models/cart_item_model.dart';
import 'package:shoesly/features/cart/logic/cubit/order_cubit.dart';
import 'package:shoesly/features/cart/ui/cart_screen.dart';
import 'package:shoesly/features/cart/ui/order_summry_screen.dart';
import 'package:shoesly/features/discover/ui/discover_screen.dart';
import 'package:shoesly/features/discover/ui/filter_screen.dart';
import 'package:shoesly/features/product/data/models/review_screen_arguments.dart';
import 'package:shoesly/features/product/logic/review_cubit/review_cubit.dart';
import 'package:shoesly/features/product/ui/product_screen.dart';
import 'package:shoesly/features/product/ui/reviews_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.productScreen:
        final productId = arguments as int;
        return MaterialPageRoute(
          builder: (_) => ProductScreen(productId: productId),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
      case Routes.discoverScreen:
        return MaterialPageRoute(
          builder: (_) => const DiscoverScreen(),
        );
      case Routes.filterScreen:
        return MaterialPageRoute(
          builder: (_) => const FilterScreen(),
        );
      case Routes.reviewsScreen:
        final args = arguments as ReviewsScreenArguments;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) =>
                getIt<ReviewCubit>()..fetchInitialreviews(args.productId),
            child: ReviewsScreen(
              productId: args.productId,
              averageRating: args.averageRating,
              reviewCount: args.reviewCount,
            ),
          ),
        );
      case Routes.orderSummryScreen:
        final cartItems = arguments as List<CartItemModel>;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<OrderCubit>(),
            child: OrderSummaryScreen(cartItems: cartItems),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
