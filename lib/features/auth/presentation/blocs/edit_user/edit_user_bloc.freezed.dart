// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user) editUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user)? editUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user)? editUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditUser value) editUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditUser value)? editUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditUser value)? editUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserEventCopyWith<$Res> {
  factory $EditUserEventCopyWith(
          EditUserEvent value, $Res Function(EditUserEvent) then) =
      _$EditUserEventCopyWithImpl<$Res, EditUserEvent>;
}

/// @nodoc
class _$EditUserEventCopyWithImpl<$Res, $Val extends EditUserEvent>
    implements $EditUserEventCopyWith<$Res> {
  _$EditUserEventCopyWithImpl(this._value, this._then);

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
    extends _$EditUserEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'EditUserEvent.started()';
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
    required TResult Function(UserEntity user) editUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user)? editUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user)? editUser,
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
    required TResult Function(_EditUser value) editUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditUser value)? editUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditUser value)? editUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditUserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$EditUserImplCopyWith<$Res> {
  factory _$$EditUserImplCopyWith(
          _$EditUserImpl value, $Res Function(_$EditUserImpl) then) =
      __$$EditUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$EditUserImplCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res, _$EditUserImpl>
    implements _$$EditUserImplCopyWith<$Res> {
  __$$EditUserImplCopyWithImpl(
      _$EditUserImpl _value, $Res Function(_$EditUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$EditUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$EditUserImpl implements _EditUser {
  const _$EditUserImpl({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'EditUserEvent.editUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserImplCopyWith<_$EditUserImpl> get copyWith =>
      __$$EditUserImplCopyWithImpl<_$EditUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user) editUser,
  }) {
    return editUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user)? editUser,
  }) {
    return editUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user)? editUser,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditUser value) editUser,
  }) {
    return editUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditUser value)? editUser,
  }) {
    return editUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditUser value)? editUser,
    required TResult orElse(),
  }) {
    if (editUser != null) {
      return editUser(this);
    }
    return orElse();
  }
}

abstract class _EditUser implements EditUserEvent {
  const factory _EditUser({required final UserEntity user}) = _$EditUserImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$EditUserImplCopyWith<_$EditUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMessage) editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMessage)? editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMessage)? editError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditError value) editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditError value)? editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditError value)? editError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserStateCopyWith<$Res> {
  factory $EditUserStateCopyWith(
          EditUserState value, $Res Function(EditUserState) then) =
      _$EditUserStateCopyWithImpl<$Res, EditUserState>;
}

/// @nodoc
class _$EditUserStateCopyWithImpl<$Res, $Val extends EditUserState>
    implements $EditUserStateCopyWith<$Res> {
  _$EditUserStateCopyWithImpl(this._value, this._then);

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
    extends _$EditUserStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EditUserState.initial()';
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
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMessage) editError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMessage)? editError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMessage)? editError,
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
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditError value) editError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditError value)? editError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditError value)? editError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EditingImplCopyWith<$Res> {
  factory _$$EditingImplCopyWith(
          _$EditingImpl value, $Res Function(_$EditingImpl) then) =
      __$$EditingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditingImplCopyWithImpl<$Res>
    extends _$EditUserStateCopyWithImpl<$Res, _$EditingImpl>
    implements _$$EditingImplCopyWith<$Res> {
  __$$EditingImplCopyWithImpl(
      _$EditingImpl _value, $Res Function(_$EditingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditingImpl implements _Editing {
  const _$EditingImpl();

  @override
  String toString() {
    return 'EditUserState.editing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMessage) editError,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMessage)? editError,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMessage)? editError,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditError value) editError,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditError value)? editError,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditError value)? editError,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements EditUserState {
  const factory _Editing() = _$EditingImpl;
}

/// @nodoc
abstract class _$$EditSuccessImplCopyWith<$Res> {
  factory _$$EditSuccessImplCopyWith(
          _$EditSuccessImpl value, $Res Function(_$EditSuccessImpl) then) =
      __$$EditSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$EditSuccessImplCopyWithImpl<$Res>
    extends _$EditUserStateCopyWithImpl<$Res, _$EditSuccessImpl>
    implements _$$EditSuccessImplCopyWith<$Res> {
  __$$EditSuccessImplCopyWithImpl(
      _$EditSuccessImpl _value, $Res Function(_$EditSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$EditSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$EditSuccessImpl implements _EditSuccess {
  const _$EditSuccessImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'EditUserState.editSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSuccessImplCopyWith<_$EditSuccessImpl> get copyWith =>
      __$$EditSuccessImplCopyWithImpl<_$EditSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMessage) editError,
  }) {
    return editSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMessage)? editError,
  }) {
    return editSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMessage)? editError,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditError value) editError,
  }) {
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditError value)? editError,
  }) {
    return editSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditError value)? editError,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditSuccess implements EditUserState {
  const factory _EditSuccess(final UserEntity user) = _$EditSuccessImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$EditSuccessImplCopyWith<_$EditSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditErrorImplCopyWith<$Res> {
  factory _$$EditErrorImplCopyWith(
          _$EditErrorImpl value, $Res Function(_$EditErrorImpl) then) =
      __$$EditErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$EditErrorImplCopyWithImpl<$Res>
    extends _$EditUserStateCopyWithImpl<$Res, _$EditErrorImpl>
    implements _$$EditErrorImplCopyWith<$Res> {
  __$$EditErrorImplCopyWithImpl(
      _$EditErrorImpl _value, $Res Function(_$EditErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$EditErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditErrorImpl implements _EditError {
  const _$EditErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EditUserState.editError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditErrorImplCopyWith<_$EditErrorImpl> get copyWith =>
      __$$EditErrorImplCopyWithImpl<_$EditErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMessage) editError,
  }) {
    return editError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMessage)? editError,
  }) {
    return editError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMessage)? editError,
    required TResult orElse(),
  }) {
    if (editError != null) {
      return editError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditError value) editError,
  }) {
    return editError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditError value)? editError,
  }) {
    return editError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditError value)? editError,
    required TResult orElse(),
  }) {
    if (editError != null) {
      return editError(this);
    }
    return orElse();
  }
}

abstract class _EditError implements EditUserState {
  const factory _EditError(final String errorMessage) = _$EditErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$EditErrorImplCopyWith<_$EditErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
