// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewState<T> {
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
    required TResult Function(ReviewStateLoading<T> value) loading,
    required TResult Function(ReviewStateSuccess<T> value) success,
    required TResult Function(ReviewStateLoadingMore<T> value) loadingMore,
    required TResult Function(ReviewStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ReviewStateLoading<T> value)? loading,
    TResult? Function(ReviewStateSuccess<T> value)? success,
    TResult? Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult? Function(ReviewStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ReviewStateLoading<T> value)? loading,
    TResult Function(ReviewStateSuccess<T> value)? success,
    TResult Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult Function(ReviewStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<T, $Res> {
  factory $ReviewStateCopyWith(
          ReviewState<T> value, $Res Function(ReviewState<T>) then) =
      _$ReviewStateCopyWithImpl<T, $Res, ReviewState<T>>;
}

/// @nodoc
class _$ReviewStateCopyWithImpl<T, $Res, $Val extends ReviewState<T>>
    implements $ReviewStateCopyWith<T, $Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

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
    extends _$ReviewStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'ReviewState<$T>.initial()';
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
    required TResult Function(ReviewStateLoading<T> value) loading,
    required TResult Function(ReviewStateSuccess<T> value) success,
    required TResult Function(ReviewStateLoadingMore<T> value) loadingMore,
    required TResult Function(ReviewStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ReviewStateLoading<T> value)? loading,
    TResult? Function(ReviewStateSuccess<T> value)? success,
    TResult? Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult? Function(ReviewStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ReviewStateLoading<T> value)? loading,
    TResult Function(ReviewStateSuccess<T> value)? success,
    TResult Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult Function(ReviewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ReviewState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ReviewStateLoadingImplCopyWith<T, $Res> {
  factory _$$ReviewStateLoadingImplCopyWith(_$ReviewStateLoadingImpl<T> value,
          $Res Function(_$ReviewStateLoadingImpl<T>) then) =
      __$$ReviewStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReviewStateLoadingImplCopyWithImpl<T, $Res>
    extends _$ReviewStateCopyWithImpl<T, $Res, _$ReviewStateLoadingImpl<T>>
    implements _$$ReviewStateLoadingImplCopyWith<T, $Res> {
  __$$ReviewStateLoadingImplCopyWithImpl(_$ReviewStateLoadingImpl<T> _value,
      $Res Function(_$ReviewStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewStateLoadingImpl<T> implements ReviewStateLoading<T> {
  const _$ReviewStateLoadingImpl();

  @override
  String toString() {
    return 'ReviewState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewStateLoadingImpl<T>);
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
    required TResult Function(ReviewStateLoading<T> value) loading,
    required TResult Function(ReviewStateSuccess<T> value) success,
    required TResult Function(ReviewStateLoadingMore<T> value) loadingMore,
    required TResult Function(ReviewStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ReviewStateLoading<T> value)? loading,
    TResult? Function(ReviewStateSuccess<T> value)? success,
    TResult? Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult? Function(ReviewStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ReviewStateLoading<T> value)? loading,
    TResult Function(ReviewStateSuccess<T> value)? success,
    TResult Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult Function(ReviewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReviewStateLoading<T> implements ReviewState<T> {
  const factory ReviewStateLoading() = _$ReviewStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ReviewStateSuccessImplCopyWith<T, $Res> {
  factory _$$ReviewStateSuccessImplCopyWith(_$ReviewStateSuccessImpl<T> value,
          $Res Function(_$ReviewStateSuccessImpl<T>) then) =
      __$$ReviewStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, bool hasReachedMax});
}

/// @nodoc
class __$$ReviewStateSuccessImplCopyWithImpl<T, $Res>
    extends _$ReviewStateCopyWithImpl<T, $Res, _$ReviewStateSuccessImpl<T>>
    implements _$$ReviewStateSuccessImplCopyWith<T, $Res> {
  __$$ReviewStateSuccessImplCopyWithImpl(_$ReviewStateSuccessImpl<T> _value,
      $Res Function(_$ReviewStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? hasReachedMax = null,
  }) {
    return _then(_$ReviewStateSuccessImpl<T>(
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

class _$ReviewStateSuccessImpl<T> implements ReviewStateSuccess<T> {
  const _$ReviewStateSuccessImpl(
      {required this.data, required this.hasReachedMax});

  @override
  final T data;
  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ReviewState<$T>.success(data: $data, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewStateSuccessImpl<T> &&
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
  _$$ReviewStateSuccessImplCopyWith<T, _$ReviewStateSuccessImpl<T>>
      get copyWith => __$$ReviewStateSuccessImplCopyWithImpl<T,
          _$ReviewStateSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(ReviewStateLoading<T> value) loading,
    required TResult Function(ReviewStateSuccess<T> value) success,
    required TResult Function(ReviewStateLoadingMore<T> value) loadingMore,
    required TResult Function(ReviewStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ReviewStateLoading<T> value)? loading,
    TResult? Function(ReviewStateSuccess<T> value)? success,
    TResult? Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult? Function(ReviewStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ReviewStateLoading<T> value)? loading,
    TResult Function(ReviewStateSuccess<T> value)? success,
    TResult Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult Function(ReviewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReviewStateSuccess<T> implements ReviewState<T> {
  const factory ReviewStateSuccess(
      {required final T data,
      required final bool hasReachedMax}) = _$ReviewStateSuccessImpl<T>;

  T get data;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$ReviewStateSuccessImplCopyWith<T, _$ReviewStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewStateLoadingMoreImplCopyWith<T, $Res> {
  factory _$$ReviewStateLoadingMoreImplCopyWith(
          _$ReviewStateLoadingMoreImpl<T> value,
          $Res Function(_$ReviewStateLoadingMoreImpl<T>) then) =
      __$$ReviewStateLoadingMoreImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ReviewStateLoadingMoreImplCopyWithImpl<T, $Res>
    extends _$ReviewStateCopyWithImpl<T, $Res, _$ReviewStateLoadingMoreImpl<T>>
    implements _$$ReviewStateLoadingMoreImplCopyWith<T, $Res> {
  __$$ReviewStateLoadingMoreImplCopyWithImpl(
      _$ReviewStateLoadingMoreImpl<T> _value,
      $Res Function(_$ReviewStateLoadingMoreImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReviewStateLoadingMoreImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ReviewStateLoadingMoreImpl<T> implements ReviewStateLoadingMore<T> {
  const _$ReviewStateLoadingMoreImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ReviewState<$T>.loadingMore(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewStateLoadingMoreImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewStateLoadingMoreImplCopyWith<T, _$ReviewStateLoadingMoreImpl<T>>
      get copyWith => __$$ReviewStateLoadingMoreImplCopyWithImpl<T,
          _$ReviewStateLoadingMoreImpl<T>>(this, _$identity);

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
    required TResult Function(ReviewStateLoading<T> value) loading,
    required TResult Function(ReviewStateSuccess<T> value) success,
    required TResult Function(ReviewStateLoadingMore<T> value) loadingMore,
    required TResult Function(ReviewStateError<T> value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ReviewStateLoading<T> value)? loading,
    TResult? Function(ReviewStateSuccess<T> value)? success,
    TResult? Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult? Function(ReviewStateError<T> value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ReviewStateLoading<T> value)? loading,
    TResult Function(ReviewStateSuccess<T> value)? success,
    TResult Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult Function(ReviewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class ReviewStateLoadingMore<T> implements ReviewState<T> {
  const factory ReviewStateLoadingMore(final T data) =
      _$ReviewStateLoadingMoreImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ReviewStateLoadingMoreImplCopyWith<T, _$ReviewStateLoadingMoreImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewStateErrorImplCopyWith<T, $Res> {
  factory _$$ReviewStateErrorImplCopyWith(_$ReviewStateErrorImpl<T> value,
          $Res Function(_$ReviewStateErrorImpl<T>) then) =
      __$$ReviewStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ReviewStateErrorImplCopyWithImpl<T, $Res>
    extends _$ReviewStateCopyWithImpl<T, $Res, _$ReviewStateErrorImpl<T>>
    implements _$$ReviewStateErrorImplCopyWith<T, $Res> {
  __$$ReviewStateErrorImplCopyWithImpl(_$ReviewStateErrorImpl<T> _value,
      $Res Function(_$ReviewStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ReviewStateErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewStateErrorImpl<T> implements ReviewStateError<T> {
  const _$ReviewStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ReviewState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewStateErrorImplCopyWith<T, _$ReviewStateErrorImpl<T>> get copyWith =>
      __$$ReviewStateErrorImplCopyWithImpl<T, _$ReviewStateErrorImpl<T>>(
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
    required TResult Function(ReviewStateLoading<T> value) loading,
    required TResult Function(ReviewStateSuccess<T> value) success,
    required TResult Function(ReviewStateLoadingMore<T> value) loadingMore,
    required TResult Function(ReviewStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ReviewStateLoading<T> value)? loading,
    TResult? Function(ReviewStateSuccess<T> value)? success,
    TResult? Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult? Function(ReviewStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ReviewStateLoading<T> value)? loading,
    TResult Function(ReviewStateSuccess<T> value)? success,
    TResult Function(ReviewStateLoadingMore<T> value)? loadingMore,
    TResult Function(ReviewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReviewStateError<T> implements ReviewState<T> {
  const factory ReviewStateError({required final String error}) =
      _$ReviewStateErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ReviewStateErrorImplCopyWith<T, _$ReviewStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
