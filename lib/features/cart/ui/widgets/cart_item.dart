import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/features/cart/data/models/cart_item_model.dart';
import 'package:shoesly/features/cart/logic/cubit/cart_cubit.dart';

class CartItem extends StatelessWidget {
  final CartItemModel item;

  const CartItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Slidable(
        key: ValueKey(item),
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              onPressed: (context) {
                context.read<CartCubit>().removeItem(item.id);
              },
              backgroundColor: ColorsManager.deleteBackground,
              foregroundColor: ColorsManager.white,
              icon: Icons.delete_sweep_outlined,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorsManager.grey,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    item.imageUrl,
                    width: 88.w,
                    height: 88.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              horizontalSpace(15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyles.primaryTextSemiBold16,
                    ),
                    Text(
                      '${item.color} . ${item.size}',
                      style: TextStyles.greyTextRegular12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '\$${item.price}',
                            style: TextStyles.primaryTextBold14,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: item.quantity == 1
                                ? ColorsManager.hintText
                                : null,
                          ),
                          onPressed: item.quantity == 1
                              ? null
                              : () {
                                  context
                                      .read<CartCubit>()
                                      .decrementItemQuantity(item.id);
                                },
                        ),
                        Text(
                          '${item.quantity}',
                          style: TextStyles.primaryTextBold14,
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle_outline),
                          onPressed: () {
                            context
                                .read<CartCubit>()
                                .incrementItemQuantity(item.id);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
