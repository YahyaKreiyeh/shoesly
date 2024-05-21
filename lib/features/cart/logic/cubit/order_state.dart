part of 'order_cubit.dart';

abstract class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object> get props => [];
}

class OrderInitial extends OrderState {}

class OrderLoading extends OrderState {}

class OrderSuccess extends OrderState {}

class OrderFailure extends OrderState {
  final String error;

  const OrderFailure(this.error);

  @override
  List<Object> get props => [error];
}
