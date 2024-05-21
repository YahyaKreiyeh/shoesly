import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/extensions.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/app_elevated_button.dart';
import 'package:shoesly/features/cart/data/models/cart_item_model.dart';
import 'package:shoesly/features/cart/logic/cubit/cart_cubit.dart';
import 'package:shoesly/features/product/data/models/get_product_response.dart';
import 'package:shoesly/features/product/logic/quantity_cubit/quantity_cubit.dart';
import 'package:shoesly/features/product/logic/quantity_cubit/quantity_state.dart';
import 'package:shoesly/features/product/ui/widgets/added_to_cart_modal_bottom_sheet.dart';

class QuantityBottomSheet extends StatefulWidget {
  final ProductResponse product;
  final String selectedSize;
  final String selectedColor;

  const QuantityBottomSheet({
    required this.product,
    required this.selectedSize,
    required this.selectedColor,
    super.key,
  });

  @override
  State<QuantityBottomSheet> createState() => _QuantityBottomSheetState();
}

class _QuantityBottomSheetState extends State<QuantityBottomSheet> {
  void updateQuantity(BuildContext context, String value) {
    final int? quantity = int.tryParse(value);
    if (quantity != null && quantity > 0) {
      context.read<QuantityCubit>().setQuantity(quantity);
    } else {
      quantityController.text =
          context.read<QuantityCubit>().state.quantity.toString();
    }
  }

  @override
  void initState() {
    final currentQuantity = context.read<QuantityCubit>().state.quantity;
    quantityController.text = currentQuantity.toString();
    super.initState();
  }

  final TextEditingController quantityController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final int price = widget.product.price;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
          top: 16.h,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add to cart',
                      style: TextStyles.primaryTextBold20,
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => context.pop(),
                    ),
                  ],
                ),
                verticalSpace(30),
                Text(
                  'Quantity',
                  style: TextStyles.primaryTextBold14,
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: BlocListener<QuantityCubit, QuantityState>(
                        listener: (context, state) {
                          quantityController.text = state.quantity.toString();
                        },
                        child: TextFormField(
                          controller: quantityController,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (value) {
                            updateQuantity(context, value);
                          },
                        ),
                      ),
                    ),
                    BlocBuilder<QuantityCubit, QuantityState>(
                      builder: (context, state) {
                        return IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          color: state.quantity == 1
                              ? ColorsManager.hintText
                              : null,
                          onPressed: state.quantity == 1
                              ? null
                              : () => context.read<QuantityCubit>().decrement(),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: () =>
                          context.read<QuantityCubit>().increment(),
                    ),
                  ],
                ),
                const Divider(),
                verticalSpace(30),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyles.secondaryTextRegular12,
                          ),
                          BlocBuilder<QuantityCubit, QuantityState>(
                            builder: (context, state) {
                              return Text(
                                '\$${(price * state.quantity).toStringAsFixed(2)}',
                                style: TextStyles.primaryTextBold20,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AppElevatedButton(
                        text: 'ADD TO CART',
                        onPressed: () {
                          final cartItem = CartItemModel(
                            id: widget.product.id,
                            name: widget.product.name,
                            price: widget.product.price,
                            quantity:
                                context.read<QuantityCubit>().state.quantity,
                            size: widget.selectedSize,
                            color: widget.selectedColor,
                            imageUrl: widget.product.images[0],
                          );
                          context.read<CartCubit>().addItem(cartItem);
                          context.pop();
                          showModalBottomSheet(
                            backgroundColor: ColorsManager.white,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.r),
                              ),
                            ),
                            builder: (context) {
                              return AddedToCartBottomSheet(
                                quantity: context
                                    .read<QuantityCubit>()
                                    .state
                                    .quantity,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
