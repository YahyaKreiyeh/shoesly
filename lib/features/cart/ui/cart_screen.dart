import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/widgets/bottom_nav_bar.dart';
import 'package:shoesly/core/widgets/custom_app_bar.dart';
import 'package:shoesly/features/cart/logic/cubit/cart_cubit.dart';
import 'package:shoesly/features/cart/ui/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomAppBar(
                title: 'Cart',
              ),
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state.items.isEmpty) {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: Text('Your cart is empty'),
                    ),
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return CartItem(
                        item: state.items[index],
                      );
                    },
                    childCount: state.items.length,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          final totalPrice = state.items
              .fold(0, (total, item) => total + item.price * item.quantity);
          return BottomNavBar(
            price: totalPrice.toStringAsFixed(2),
            text: 'Grand Total',
            buttonText: 'CHECK OUT',
            onPressed: () => context.pushNamed(
              Routes.orderSummryScreen,
              arguments: state.items,
            ),
          );
        },
      ),
    );
  }
}
