import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/helpers/spacing.dart';
import 'package:shoesly/core/utils/constants/colors.dart';
import 'package:shoesly/core/utils/constants/styles.dart';
import 'package:shoesly/core/widgets/bottom_nav_bar.dart';
import 'package:shoesly/core/widgets/custom_app_bar.dart';
import 'package:shoesly/features/cart/data/models/cart_item_model.dart';
import 'package:shoesly/features/cart/data/models/order_request_body.dart';
import 'package:shoesly/features/cart/logic/cubit/order_cubit.dart';
import 'package:shoesly/features/cart/ui/widgets/app_divider.dart';
import 'package:shoesly/features/cart/ui/widgets/order_item.dart';

class OrderSummaryScreen extends StatelessWidget {
  final List<CartItemModel> cartItems;

  const OrderSummaryScreen({
    required this.cartItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final totalPrice =
        cartItems.fold(0, (total, item) => total + item.price * item.quantity);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                title: 'Order Summary',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(30),
                    Text(
                      'Information',
                      style: TextStyles.primaryTextBold18,
                    ),
                    verticalSpace(20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Payment Method',
                                style: TextStyles.primaryTextBold14,
                              ),
                              verticalSpace(5),
                              Text(
                                'Credit Card',
                                style: TextStyles.secondaryTextRegular14,
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: ColorsManager.hintText,
                          size: 16.sp,
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    const CustomDivider(),
                    verticalSpace(20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyles.primaryTextBold14,
                              ),
                              verticalSpace(5),
                              Text(
                                'Semarang, Indonesia',
                                style: TextStyles.secondaryTextRegular14,
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: ColorsManager.hintText,
                          size: 16.sp,
                        ),
                      ],
                    ),
                    verticalSpace(30),
                    Text(
                      'Order Detail',
                      style: TextStyles.primaryTextBold18,
                    ),
                    verticalSpace(20),
                    ...cartItems.map(
                      (item) => OrderItem(
                        title: item.name,
                        detail:
                            'Nike . ${item.color} . ${item.size} . Qty ${item.quantity}',
                        price: item.price.toStringAsFixed(2),
                      ),
                    ),
                    verticalSpace(30),
                    Text(
                      'Payment Detail',
                      style: TextStyles.primaryTextBold18,
                    ),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Sub Total',
                            style: TextStyles.secondaryTextRegular14,
                          ),
                        ),
                        Text(
                          '\$$totalPrice',
                          style: TextStyles.primaryTextSemiBold16,
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Shipping',
                            style: TextStyles.secondaryTextRegular14,
                          ),
                        ),
                        Text(
                          '\$20.00',
                          style: TextStyles.primaryTextSemiBold16,
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    const CustomDivider(),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Total Order',
                            style: TextStyles.secondaryTextRegular14,
                          ),
                        ),
                        Text(
                          '\$${totalPrice + 20}',
                          style: TextStyles.primaryTextSemiBold16,
                        ),
                      ],
                    ),
                    verticalSpace(20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BlocListener<OrderCubit, OrderState>(
        listener: (context, state) {
          if (state is OrderSuccess) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: Text('Success')),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Icon(
                        Icons.check_circle_outline,
                        size: 100,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is OrderFailure) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Center(child: Text('Error')),
                content: Text(state.error),
              ),
            );
          }
        },
        child: BottomNavBar(
          text: 'Grand Total',
          price: '${totalPrice + 20}',
          buttonText: 'Payment',
          onPressed: () {
            final orderRequest = OrderRequest(
              cartItems: cartItems,
              totalPrice: totalPrice.toDouble(),
            );
            context.read<OrderCubit>().placeOrder(
                  orderRequest: orderRequest,
                  totaPrice: totalPrice + 20,
                );
          },
        ),
      ),
    );
  }
}
