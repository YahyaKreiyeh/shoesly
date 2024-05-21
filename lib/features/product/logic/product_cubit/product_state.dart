part of 'product_cubit.dart';

@freezed
class ProductState<T> with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = ProductLoading;
  const factory ProductState.success(T data) = ProductSuccess;
  const factory ProductState.error({required String error}) = ProductError;
}
