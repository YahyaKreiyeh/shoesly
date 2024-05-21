import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoesly/features/cart/data/models/cart_item_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  void addItem(CartItemModel item) {
    final currentState = state;
    final items = List<CartItemModel>.from(currentState.items);
    final index = items.indexWhere((i) => i.id == item.id);

    if (index == -1) {
      items.add(item);
    } else {
      items[index] = items[index].copyWith(
        quantity: items[index].quantity + item.quantity,
      );
    }

    emit(CartState(items: items));
  }

  void removeItem(int id) {
    final items = state.items.where((item) => item.id != id).toList();
    emit(CartState(items: items));
  }

  void incrementItemQuantity(int id) {
    final currentState = state;
    final items = List<CartItemModel>.from(currentState.items);
    final index = items.indexWhere((i) => i.id == id);

    if (index != -1) {
      items[index] = items[index].copyWith(
        quantity: items[index].quantity + 1,
      );
      emit(CartState(items: items));
    }
  }

  void decrementItemQuantity(int id) {
    final currentState = state;
    final items = List<CartItemModel>.from(currentState.items);
    final index = items.indexWhere((i) => i.id == id);

    if (index != -1 && items[index].quantity > 1) {
      items[index] = items[index].copyWith(
        quantity: items[index].quantity - 1,
      );
      emit(CartState(items: items));
    }
  }

  void clearCart() {
    emit(const CartState());
  }
}
