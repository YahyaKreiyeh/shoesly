part of 'cart_cubit.dart';

class CartState extends Equatable {
  final List<CartItemModel> items;

  const CartState({this.items = const []});

  @override
  List<Object> get props => [items];
}
