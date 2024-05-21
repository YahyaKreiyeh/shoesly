import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoesly/features/cart/data/models/order_request_body.dart';
import 'package:shoesly/features/cart/data/repos/cart_repo.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  final CartRepo cartRepo;

  OrderCubit(this.cartRepo) : super(OrderInitial());

  void placeOrder({
    required OrderRequest orderRequest,
    required int totaPrice,
  }) async {
    emit(OrderLoading());
    final result = await cartRepo.createOrderWithItems(
      orderRequest: orderRequest,
      totalPrice: totaPrice,
    );
    result.when(
      success: (data) => emit(OrderSuccess()),
      failure: (error) => emit(OrderFailure(error.apiErrorModel.message!)),
    );
  }
}
