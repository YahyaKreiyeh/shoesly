import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/features/product/logic/size_selector_cubit.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final sizes = ['39', '39.5', '40', '40.5', '41'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: TextStyles.primaryTextSemiBold16,
        ),
        verticalSpace(10),
        BlocBuilder<SizeSelectorCubit, String>(
          builder: (context, selectedSize) {
            return Row(
              children: sizes.map(
                (size) {
                  final isSelected = size == selectedSize;
                  return GestureDetector(
                    onTap: () {
                      context.read<SizeSelectorCubit>().selectSize(size);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: Container(
                        width: 40.sp,
                        height: 40.sp,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? ColorsManager.black
                              : ColorsManager.white,
                          border: Border.all(
                            color: isSelected
                                ? ColorsManager.black
                                : ColorsManager.colorSelectorBackground,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          size,
                          style: isSelected
                              ? TextStyles.whiteBold14
                              : TextStyles.secondaryTextBold14,
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ],
    );
  }
}
