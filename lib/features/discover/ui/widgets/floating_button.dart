import 'package:flutter/material.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/utils/constants/colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      shape: const StadiumBorder(),
      backgroundColor: ColorsManager.primary,
      foregroundColor: ColorsManager.white,
      label: const Text('FILTER'),
      icon: const Icon(Icons.tune_outlined),
      onPressed: () => context.pushNamed(Routes.filterScreen),
    );
  }
}
