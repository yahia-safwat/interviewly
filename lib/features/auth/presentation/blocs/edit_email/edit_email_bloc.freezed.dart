// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user, String newEmail) editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, String newEmail)? editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, String newEmail)? editEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditEmail value) editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditEmail value)? editEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditEmail value)? editEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditEmailEventCopyWith<$Res> {
  factory $EditEmailEventCopyWith(
          EditEmailEvent value, $Res Function(EditEmailEvent) then) =
      _$EditEmailEventCopyWithImpl<$Res, EditEmailEvent>;
}

/// @nodoc
class _$EditEmailEventCopyWithImpl<$Res, $Val extends EditEmailEvent>
    implements $EditEmailEventCopyWith<$Res> {
  _$EditEmailEventCopyWithImpl(this._value, this._then);

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
    extends _$EditEmailEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'EditEmailEvent.started()';
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
    required TResult Function(UserEntity user, String newEmail) editEmail,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, String newEmail)? editEmail,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, String newEmail)? editEmail,
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
    required TResult Function(_EditEmail value) editEmail,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditEmail value)? editEmail,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditEmail value)? editEmail,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditEmailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$EditEmailImplCopyWith<$Res> {
  factory _$$EditEmailImplCopyWith(
          _$EditEmailImpl value, $Res Function(_$EditEmailImpl) then) =
      __$$EditEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user, String newEmail});
}

/// @nodoc
class __$$EditEmailImplCopyWithImpl<$Res>
    extends _$EditEmailEventCopyWithImpl<$Res, _$EditEmailImpl>
    implements _$$EditEmailImplCopyWith<$Res> {
  __$$EditEmailImplCopyWithImpl(
      _$EditEmailImpl _value, $Res Function(_$EditEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? newEmail = null,
  }) {
    return _then(_$EditEmailImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      null == newEmail
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditEmailImpl implements _EditEmail {
  const _$EditEmailImpl(this.user, this.newEmail);

  @override
  final UserEntity user;
  @override
  final String newEmail;

  @override
  String toString() {
    return 'EditEmailEvent.editEmail(user: $user, newEmail: $newEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmailImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, newEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmailImplCopyWith<_$EditEmailImpl> get copyWith =>
      __$$EditEmailImplCopyWithImpl<_$EditEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user, String newEmail) editEmail,
  }) {
    return editEmail(user, newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, String newEmail)? editEmail,
  }) {
    return editEmail?.call(user, newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, String newEmail)? editEmail,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(user, newEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditEmail value) editEmail,
  }) {
    return editEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditEmail value)? editEmail,
  }) {
    return editEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditEmail value)? editEmail,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(this);
    }
    return orElse();
  }
}

abstract class _EditEmail implements EditEmailEvent {
  const factory _EditEmail(final UserEntity user, final String newEmail) =
      _$EditEmailImpl;

  UserEntity get user;
  String get newEmail;
  @JsonKey(ignore: true)
  _$$EditEmailImplCopyWith<_$EditEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditEmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String message) editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String message)? editError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String message)? editError,
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
abstract class $EditEmailStateCopyWith<$Res> {
  factory $EditEmailStateCopyWith(
          EditEmailState value, $Res Function(EditEmailState) then) =
      _$EditEmailStateCopyWithImpl<$Res, EditEmailState>;
}

/// @nodoc
class _$EditEmailStateCopyWithImpl<$Res, $Val extends EditEmailState>
    implements $EditEmailStateCopyWith<$Res> {
  _$EditEmailStateCopyWithImpl(this._value, this._then);

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
    extends _$EditEmailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EditEmailState.initial()';
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
    required TResult Function(String message) editError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String message)? editError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String message)? editError,
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

abstract class _Initial implements EditEmailState {
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
    extends _$EditEmailStateCopyWithImpl<$Res, _$EditingImpl>
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
    return 'EditEmailState.editing()';
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
    required TResult Function(String message) editError,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String message)? editError,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String message)? editError,
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

abstract class _Editing implements EditEmailState {
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
    extends _$EditEmailStateCopyWithImpl<$Res, _$EditSuccessImpl>
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
    return 'EditEmailState.editSuccess(user: $user)';
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
    required TResult Function(String message) editError,
  }) {
    return editSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String message)? editError,
  }) {
    return editSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String message)? editError,
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

abstract class _EditSuccess implements EditEmailState {
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
  $Res call({String message});
}

/// @nodoc
class __$$EditErrorImplCopyWithImpl<$Res>
    extends _$EditEmailStateCopyWithImpl<$Res, _$EditErrorImpl>
    implements _$$EditErrorImplCopyWith<$Res> {
  __$$EditErrorImplCopyWithImpl(
      _$EditErrorImpl _value, $Res Function(_$EditErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EditErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditErrorImpl implements _EditError {
  const _$EditErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditEmailState.editError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

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
    required TResult Function(String message) editError,
  }) {
    return editError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String message)? editError,
  }) {
    return editError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String message)? editError,
    required TResult orElse(),
  }) {
    if (editError != null) {
      return editError(message);
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

abstract class _EditError implements EditEmailState {
  const factory _EditError(final String message) = _$EditErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$EditErrorImplCopyWith<_$EditErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
