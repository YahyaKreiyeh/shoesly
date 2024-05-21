import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoesly/features/product/logic/quantity_cubit/quantity_state.dart';

class QuantityCubit extends Cubit<QuantityState> {
  QuantityCubit() : super(const QuantityState(1));

  void increment() => emit(QuantityState(state.quantity + 1));

  void decrement() {
    if (state.quantity > 1) {
      emit(QuantityState(state.quantity - 1));
    }
  }

  void setQuantity(int quantity) {
    if (quantity > 0) {
      emit(QuantityState(quantity));
    }
  }
}
