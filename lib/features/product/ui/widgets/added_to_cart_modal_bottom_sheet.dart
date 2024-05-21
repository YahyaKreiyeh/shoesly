import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/routing/routes.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/app_elevated_button.dart';
import 'package:shoesly/core/widgets/app_outlined_button.dart';

class AddedToCartBottomSheet extends StatelessWidget {
  final int quantity;

  const AddedToCartBottomSheet({
    required this.quantity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 30.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.check_circle_outline,
            size: 60,
            color: ColorsManager.black,
          ),
          verticalSpace(20),
          Text(
            'Added to cart',
            style: TextStyles.primarySemiBold24,
          ),
          const SizedBox(height: 10),
          Text(
            '$quantity Item${quantity > 1 ? 's' : ''} Total',
            style: TextStyles.secondaryTextRegular14,
          ),
          verticalSpace(20),
          Row(
            children: [
              Expanded(
                child: AppOutlinedButton(
                  text: 'Back Explore',
                  onPressed: () => context.pop(),
                ),
              ),
              horizontalSpace(15),
              Expanded(
                child: AppElevatedButton(
                  text: 'TO CART',
                  onPressed: () {
                    context.pop();
                    context.pushNamed(Routes.cartScreen);
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
