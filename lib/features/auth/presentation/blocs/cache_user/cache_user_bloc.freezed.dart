// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user) cacheUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user)? cacheUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user)? cacheUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CacheUser value) cacheUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CacheUser value)? cacheUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CacheUser value)? cacheUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheUserEventCopyWith<$Res> {
  factory $CacheUserEventCopyWith(
          CacheUserEvent value, $Res Function(CacheUserEvent) then) =
      _$CacheUserEventCopyWithImpl<$Res, CacheUserEvent>;
}

/// @nodoc
class _$CacheUserEventCopyWithImpl<$Res, $Val extends CacheUserEvent>
    implements $CacheUserEventCopyWith<$Res> {
  _$CacheUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CacheUserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CacheUserEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user) cacheUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user)? cacheUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user)? cacheUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CacheUser value) cacheUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CacheUser value)? cacheUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CacheUser value)? cacheUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CacheUserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CacheUserImplCopyWith<$Res> {
  factory _$$CacheUserImplCopyWith(
          _$CacheUserImpl value, $Res Function(_$CacheUserImpl) then) =
      __$$CacheUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$CacheUserImplCopyWithImpl<$Res>
    extends _$CacheUserEventCopyWithImpl<$Res, _$CacheUserImpl>
    implements _$$CacheUserImplCopyWith<$Res> {
  __$$CacheUserImplCopyWithImpl(
      _$CacheUserImpl _value, $Res Function(_$CacheUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CacheUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$CacheUserImpl implements _CacheUser {
  const _$CacheUserImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'CacheUserEvent.cacheUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheUserImplCopyWith<_$CacheUserImpl> get copyWith =>
      __$$CacheUserImplCopyWithImpl<_$CacheUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user) cacheUser,
  }) {
    return cacheUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user)? cacheUser,
  }) {
    return cacheUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user)? cacheUser,
    required TResult orElse(),
  }) {
    if (cacheUser != null) {
      return cacheUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CacheUser value) cacheUser,
  }) {
    return cacheUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CacheUser value)? cacheUser,
  }) {
    return cacheUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CacheUser value)? cacheUser,
    required TResult orElse(),
  }) {
    if (cacheUser != null) {
      return cacheUser(this);
    }
    return orElse();
  }
}

abstract class _CacheUser implements CacheUserEvent {
  const factory _CacheUser({required final UserEntity user}) = _$CacheUserImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$CacheUserImplCopyWith<_$CacheUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CacheUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(UserEntity user) cacheSuccess,
    required TResult Function(String errorMessage) cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(UserEntity user)? cacheSuccess,
    TResult? Function(String errorMessage)? cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(UserEntity user)? cacheSuccess,
    TResult Function(String errorMessage)? cacheError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_CacheSuccess value) cacheSuccess,
    required TResult Function(_CacheError value) cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_CacheSuccess value)? cacheSuccess,
    TResult? Function(_CacheError value)? cacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_CacheSuccess value)? cacheSuccess,
    TResult Function(_CacheError value)? cacheError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheUserStateCopyWith<$Res> {
  factory $CacheUserStateCopyWith(
          CacheUserState value, $Res Function(CacheUserState) then) =
      _$CacheUserStateCopyWithImpl<$Res, CacheUserState>;
}

/// @nodoc
class _$CacheUserStateCopyWithImpl<$Res, $Val extends CacheUserState>
    implements $CacheUserStateCopyWith<$Res> {
  _$CacheUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CacheUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CacheUserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(UserEntity user) cacheSuccess,
    required TResult Function(String errorMessage) cacheError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(UserEntity user)? cacheSuccess,
    TResult? Function(String errorMessage)? cacheError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(UserEntity user)? cacheSuccess,
    TResult Function(String errorMessage)? cacheError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_CacheSuccess value) cacheSuccess,
    required TResult Function(_CacheError value) cacheError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_CacheSuccess value)? cacheSuccess,
    TResult? Function(_CacheError value)? cacheError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_CacheSuccess value)? cacheSuccess,
    TResult Function(_CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CacheUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CachingImplCopyWith<$Res> {
  factory _$$CachingImplCopyWith(
          _$CachingImpl value, $Res Function(_$CachingImpl) then) =
      __$$CachingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CachingImplCopyWithImpl<$Res>
    extends _$CacheUserStateCopyWithImpl<$Res, _$CachingImpl>
    implements _$$CachingImplCopyWith<$Res> {
  __$$CachingImplCopyWithImpl(
      _$CachingImpl _value, $Res Function(_$CachingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CachingImpl implements _Caching {
  const _$CachingImpl();

  @override
  String toString() {
    return 'CacheUserState.caching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CachingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(UserEntity user) cacheSuccess,
    required TResult Function(String errorMessage) cacheError,
  }) {
    return caching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(UserEntity user)? cacheSuccess,
    TResult? Function(String errorMessage)? cacheError,
  }) {
    return caching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(UserEntity user)? cacheSuccess,
    TResult Function(String errorMessage)? cacheError,
    required TResult orElse(),
  }) {
    if (caching != null) {
      return caching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_CacheSuccess value) cacheSuccess,
    required TResult Function(_CacheError value) cacheError,
  }) {
    return caching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_CacheSuccess value)? cacheSuccess,
    TResult? Function(_CacheError value)? cacheError,
  }) {
    return caching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_CacheSuccess value)? cacheSuccess,
    TResult Function(_CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (caching != null) {
      return caching(this);
    }
    return orElse();
  }
}

abstract class _Caching implements CacheUserState {
  const factory _Caching() = _$CachingImpl;
}

/// @nodoc
abstract class _$$CacheSuccessImplCopyWith<$Res> {
  factory _$$CacheSuccessImplCopyWith(
          _$CacheSuccessImpl value, $Res Function(_$CacheSuccessImpl) then) =
      __$$CacheSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$CacheSuccessImplCopyWithImpl<$Res>
    extends _$CacheUserStateCopyWithImpl<$Res, _$CacheSuccessImpl>
    implements _$$CacheSuccessImplCopyWith<$Res> {
  __$$CacheSuccessImplCopyWithImpl(
      _$CacheSuccessImpl _value, $Res Function(_$CacheSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CacheSuccessImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$CacheSuccessImpl implements _CacheSuccess {
  const _$CacheSuccessImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'CacheUserState.cacheSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheSuccessImplCopyWith<_$CacheSuccessImpl> get copyWith =>
      __$$CacheSuccessImplCopyWithImpl<_$CacheSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(UserEntity user) cacheSuccess,
    required TResult Function(String errorMessage) cacheError,
  }) {
    return cacheSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(UserEntity user)? cacheSuccess,
    TResult? Function(String errorMessage)? cacheError,
  }) {
    return cacheSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(UserEntity user)? cacheSuccess,
    TResult Function(String errorMessage)? cacheError,
    required TResult orElse(),
  }) {
    if (cacheSuccess != null) {
      return cacheSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_CacheSuccess value) cacheSuccess,
    required TResult Function(_CacheError value) cacheError,
  }) {
    return cacheSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_CacheSuccess value)? cacheSuccess,
    TResult? Function(_CacheError value)? cacheError,
  }) {
    return cacheSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_CacheSuccess value)? cacheSuccess,
    TResult Function(_CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (cacheSuccess != null) {
      return cacheSuccess(this);
    }
    return orElse();
  }
}

abstract class _CacheSuccess implements CacheUserState {
  const factory _CacheSuccess({required final UserEntity user}) =
      _$CacheSuccessImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$CacheSuccessImplCopyWith<_$CacheSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheErrorImplCopyWith<$Res> {
  factory _$$CacheErrorImplCopyWith(
          _$CacheErrorImpl value, $Res Function(_$CacheErrorImpl) then) =
      __$$CacheErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CacheErrorImplCopyWithImpl<$Res>
    extends _$CacheUserStateCopyWithImpl<$Res, _$CacheErrorImpl>
    implements _$$CacheErrorImplCopyWith<$Res> {
  __$$CacheErrorImplCopyWithImpl(
      _$CacheErrorImpl _value, $Res Function(_$CacheErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CacheErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheErrorImpl implements _CacheError {
  const _$CacheErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CacheUserState.cacheError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      __$$CacheErrorImplCopyWithImpl<_$CacheErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(UserEntity user) cacheSuccess,
    required TResult Function(String errorMessage) cacheError,
  }) {
    return cacheError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(UserEntity user)? cacheSuccess,
    TResult? Function(String errorMessage)? cacheError,
  }) {
    return cacheError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(UserEntity user)? cacheSuccess,
    TResult Function(String errorMessage)? cacheError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_CacheSuccess value) cacheSuccess,
    required TResult Function(_CacheError value) cacheError,
  }) {
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_CacheSuccess value)? cacheSuccess,
    TResult? Function(_CacheError value)? cacheError,
  }) {
    return cacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_CacheSuccess value)? cacheSuccess,
    TResult Function(_CacheError value)? cacheError,
    required TResult orElse(),
  }) {
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class _CacheError implements CacheUserState {
  const factory _CacheError({required final String errorMessage}) =
      _$CacheErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$CacheErrorImplCopyWith<_$CacheErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
