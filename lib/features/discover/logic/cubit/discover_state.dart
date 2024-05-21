part of 'discover_cubit.dart';

@freezed
class DiscoverState<T> with _$DiscoverState<T> {
  const factory DiscoverState.initial() = _Initial;
  const factory DiscoverState.loading() = DiscoverLoading;
  const factory DiscoverState.success(
      {required T data, required bool hasReachedMax}) = DiscoverSuccess<T>;
  const factory DiscoverState.loadingMore(T data) = DiscoverLoadingMore<T>;
  const factory DiscoverState.error({required String error}) = DiscoverError;
}
