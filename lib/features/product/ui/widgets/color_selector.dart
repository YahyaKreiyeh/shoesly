import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/features/product/logic/color_selector_cubit.dart';

class ColorSelector extends StatelessWidget {
  ColorSelector({
    super.key,
  });

  final List<Color> colors = [
    ColorsManager.white,
    ColorsManager.black,
    ColorsManager.green,
    ColorsManager.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorSelectorCubit(),
      child: BlocBuilder<ColorSelectorCubit, String>(
        builder: (context, selectedIndex) {
          return Container(
            decoration: BoxDecoration(
              color: ColorsManager.colorSelectorBackground,
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  colors.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        context
                            .read<ColorSelectorCubit>()
                            .selectColor(colors[index].toString());
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors[index],
                        ),
                        child: selectedIndex == colors[index].toString()
                            ? Icon(
                                Icons.check,
                                color: colors[index] == ColorsManager.white
                                    ? ColorsManager.black
                                    : ColorsManager.white,
                              )
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
