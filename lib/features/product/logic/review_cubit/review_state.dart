part of 'review_cubit.dart';

@freezed
class ReviewState<T> with _$ReviewState<T> {
  const factory ReviewState.initial() = _Initial;
  const factory ReviewState.loading() = ReviewStateLoading;
  const factory ReviewState.success(
      {required T data, required bool hasReachedMax}) = ReviewStateSuccess<T>;
  const factory ReviewState.loadingMore(T data) = ReviewStateLoadingMore<T>;
  const factory ReviewState.error({required String error}) = ReviewStateError;
}
