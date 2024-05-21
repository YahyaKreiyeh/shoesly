import 'package:flutter/material.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/utils/constants/colors.dart';

class ShoppingBagIconButton extends StatelessWidget {
  const ShoppingBagIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.shopping_bag_outlined,
        color: ColorsManager.primary,
      ),
      onPressed: () => context.pushNamed(Routes.cartScreen),
    );
  }
}
