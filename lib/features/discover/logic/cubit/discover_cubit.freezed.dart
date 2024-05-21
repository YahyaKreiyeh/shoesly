// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(T data) loadingMore,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, bool hasReachedMax)? success,
    TResult? Function(T data)? loadingMore,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(T data)? loadingMore,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DiscoverLoading<T> value) loading,
    required TResult Function(DiscoverSuccess<T> value) success,
    required TResult Function(DiscoverLoadingMore<T> value) loadingMore,
    required TResult Function(DiscoverError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DiscoverLoading<T> value)? loading,
    TResult? Function(DiscoverSuccess<T> value)? success,
    TResult? Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult? Function(DiscoverError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DiscoverLoading<T> value)? loading,
    TResult Function(DiscoverSuccess<T> value)? success,
    TResult Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult Function(DiscoverError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<T, $Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState<T> value, $Res Function(DiscoverState<T>) then) =
      _$DiscoverStateCopyWithImpl<T, $Res, DiscoverState<T>>;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<T, $Res, $Val extends DiscoverState<T>>
    implements $DiscoverStateCopyWith<T, $Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$DiscoverStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DiscoverState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(T data) loadingMore,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, bool hasReachedMax)? success,
    TResult? Function(T data)? loadingMore,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(T data)? loadingMore,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DiscoverLoading<T> value) loading,
    required TResult Function(DiscoverSuccess<T> value) success,
    required TResult Function(DiscoverLoadingMore<T> value) loadingMore,
    required TResult Function(DiscoverError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DiscoverLoading<T> value)? loading,
    TResult? Function(DiscoverSuccess<T> value)? success,
    TResult? Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult? Function(DiscoverError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DiscoverLoading<T> value)? loading,
    TResult Function(DiscoverSuccess<T> value)? success,
    TResult Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult Function(DiscoverError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DiscoverState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$DiscoverLoadingImplCopyWith<T, $Res> {
  factory _$$DiscoverLoadingImplCopyWith(_$DiscoverLoadingImpl<T> value,
          $Res Function(_$DiscoverLoadingImpl<T>) then) =
      __$$DiscoverLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DiscoverLoadingImplCopyWithImpl<T, $Res>
    extends _$DiscoverStateCopyWithImpl<T, $Res, _$DiscoverLoadingImpl<T>>
    implements _$$DiscoverLoadingImplCopyWith<T, $Res> {
  __$$DiscoverLoadingImplCopyWithImpl(_$DiscoverLoadingImpl<T> _value,
      $Res Function(_$DiscoverLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscoverLoadingImpl<T> implements DiscoverLoading<T> {
  const _$DiscoverLoadingImpl();

  @override
  String toString() {
    return 'DiscoverState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscoverLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(T data) loadingMore,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, bool hasReachedMax)? success,
    TResult? Function(T data)? loadingMore,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(T data)? loadingMore,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DiscoverLoading<T> value) loading,
    required TResult Function(DiscoverSuccess<T> value) success,
    required TResult Function(DiscoverLoadingMore<T> value) loadingMore,
    required TResult Function(DiscoverError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DiscoverLoading<T> value)? loading,
    TResult? Function(DiscoverSuccess<T> value)? success,
    TResult? Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult? Function(DiscoverError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DiscoverLoading<T> value)? loading,
    TResult Function(DiscoverSuccess<T> value)? success,
    TResult Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult Function(DiscoverError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DiscoverLoading<T> implements DiscoverState<T> {
  const factory DiscoverLoading() = _$DiscoverLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DiscoverSuccessImplCopyWith<T, $Res> {
  factory _$$DiscoverSuccessImplCopyWith(_$DiscoverSuccessImpl<T> value,
          $Res Function(_$DiscoverSuccessImpl<T>) then) =
      __$$DiscoverSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, bool hasReachedMax});
}

/// @nodoc
class __$$DiscoverSuccessImplCopyWithImpl<T, $Res>
    extends _$DiscoverStateCopyWithImpl<T, $Res, _$DiscoverSuccessImpl<T>>
    implements _$$DiscoverSuccessImplCopyWith<T, $Res> {
  __$$DiscoverSuccessImplCopyWithImpl(_$DiscoverSuccessImpl<T> _value,
      $Res Function(_$DiscoverSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? hasReachedMax = null,
  }) {
    return _then(_$DiscoverSuccessImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DiscoverSuccessImpl<T> implements DiscoverSuccess<T> {
  const _$DiscoverSuccessImpl(
      {required this.data, required this.hasReachedMax});

  @override
  final T data;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'DiscoverState<$T>.success(data: $data, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverSuccessImplCopyWith<T, _$DiscoverSuccessImpl<T>> get copyWith =>
      __$$DiscoverSuccessImplCopyWithImpl<T, _$DiscoverSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(T data) loadingMore,
    required TResult Function(String error) error,
  }) {
    return success(data, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, bool hasReachedMax)? success,
    TResult? Function(T data)? loadingMore,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(T data)? loadingMore,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DiscoverLoading<T> value) loading,
    required TResult Function(DiscoverSuccess<T> value) success,
    required TResult Function(DiscoverLoadingMore<T> value) loadingMore,
    required TResult Function(DiscoverError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DiscoverLoading<T> value)? loading,
    TResult? Function(DiscoverSuccess<T> value)? success,
    TResult? Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult? Function(DiscoverError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DiscoverLoading<T> value)? loading,
    TResult Function(DiscoverSuccess<T> value)? success,
    TResult Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult Function(DiscoverError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DiscoverSuccess<T> implements DiscoverState<T> {
  const factory DiscoverSuccess(
      {required final T data,
      required final bool hasReachedMax}) = _$DiscoverSuccessImpl<T>;

  T get data;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$DiscoverSuccessImplCopyWith<T, _$DiscoverSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscoverLoadingMoreImplCopyWith<T, $Res> {
  factory _$$DiscoverLoadingMoreImplCopyWith(_$DiscoverLoadingMoreImpl<T> value,
          $Res Function(_$DiscoverLoadingMoreImpl<T>) then) =
      __$$DiscoverLoadingMoreImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DiscoverLoadingMoreImplCopyWithImpl<T, $Res>
    extends _$DiscoverStateCopyWithImpl<T, $Res, _$DiscoverLoadingMoreImpl<T>>
    implements _$$DiscoverLoadingMoreImplCopyWith<T, $Res> {
  __$$DiscoverLoadingMoreImplCopyWithImpl(_$DiscoverLoadingMoreImpl<T> _value,
      $Res Function(_$DiscoverLoadingMoreImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DiscoverLoadingMoreImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DiscoverLoadingMoreImpl<T> implements DiscoverLoadingMore<T> {
  const _$DiscoverLoadingMoreImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DiscoverState<$T>.loadingMore(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverLoadingMoreImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverLoadingMoreImplCopyWith<T, _$DiscoverLoadingMoreImpl<T>>
      get copyWith => __$$DiscoverLoadingMoreImplCopyWithImpl<T,
          _$DiscoverLoadingMoreImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(T data) loadingMore,
    required TResult Function(String error) error,
  }) {
    return loadingMore(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, bool hasReachedMax)? success,
    TResult? Function(T data)? loadingMore,
    TResult? Function(String error)? error,
  }) {
    return loadingMore?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(T data)? loadingMore,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DiscoverLoading<T> value) loading,
    required TResult Function(DiscoverSuccess<T> value) success,
    required TResult Function(DiscoverLoadingMore<T> value) loadingMore,
    required TResult Function(DiscoverError<T> value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DiscoverLoading<T> value)? loading,
    TResult? Function(DiscoverSuccess<T> value)? success,
    TResult? Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult? Function(DiscoverError<T> value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DiscoverLoading<T> value)? loading,
    TResult Function(DiscoverSuccess<T> value)? success,
    TResult Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult Function(DiscoverError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class DiscoverLoadingMore<T> implements DiscoverState<T> {
  const factory DiscoverLoadingMore(final T data) =
      _$DiscoverLoadingMoreImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DiscoverLoadingMoreImplCopyWith<T, _$DiscoverLoadingMoreImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscoverErrorImplCopyWith<T, $Res> {
  factory _$$DiscoverErrorImplCopyWith(_$DiscoverErrorImpl<T> value,
          $Res Function(_$DiscoverErrorImpl<T>) then) =
      __$$DiscoverErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DiscoverErrorImplCopyWithImpl<T, $Res>
    extends _$DiscoverStateCopyWithImpl<T, $Res, _$DiscoverErrorImpl<T>>
    implements _$$DiscoverErrorImplCopyWith<T, $Res> {
  __$$DiscoverErrorImplCopyWithImpl(_$DiscoverErrorImpl<T> _value,
      $Res Function(_$DiscoverErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DiscoverErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DiscoverErrorImpl<T> implements DiscoverError<T> {
  const _$DiscoverErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DiscoverState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverErrorImplCopyWith<T, _$DiscoverErrorImpl<T>> get copyWith =>
      __$$DiscoverErrorImplCopyWithImpl<T, _$DiscoverErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(T data) loadingMore,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, bool hasReachedMax)? success,
    TResult? Function(T data)? loadingMore,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(T data)? loadingMore,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(DiscoverLoading<T> value) loading,
    required TResult Function(DiscoverSuccess<T> value) success,
    required TResult Function(DiscoverLoadingMore<T> value) loadingMore,
    required TResult Function(DiscoverError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DiscoverLoading<T> value)? loading,
    TResult? Function(DiscoverSuccess<T> value)? success,
    TResult? Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult? Function(DiscoverError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DiscoverLoading<T> value)? loading,
    TResult Function(DiscoverSuccess<T> value)? success,
    TResult Function(DiscoverLoadingMore<T> value)? loadingMore,
    TResult Function(DiscoverError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DiscoverError<T> implements DiscoverState<T> {
  const factory DiscoverError({required final String error}) =
      _$DiscoverErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$DiscoverErrorImplCopyWith<T, _$DiscoverErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
