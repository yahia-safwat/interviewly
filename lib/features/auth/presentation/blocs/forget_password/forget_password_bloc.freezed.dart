// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) forgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? forgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? forgetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgetPassword value) forgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ForgetPassword value)? forgetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgetPassword value)? forgetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordEventCopyWith<$Res> {
  factory $ForgetPasswordEventCopyWith(
          ForgetPasswordEvent value, $Res Function(ForgetPasswordEvent) then) =
      _$ForgetPasswordEventCopyWithImpl<$Res, ForgetPasswordEvent>;
}

/// @nodoc
class _$ForgetPasswordEventCopyWithImpl<$Res, $Val extends ForgetPasswordEvent>
    implements $ForgetPasswordEventCopyWith<$Res> {
  _$ForgetPasswordEventCopyWithImpl(this._value, this._then);

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
    extends _$ForgetPasswordEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ForgetPasswordEvent.started()';
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
    required TResult Function(String email) forgetPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? forgetPassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? forgetPassword,
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
    required TResult Function(_ForgetPassword value) forgetPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ForgetPassword value)? forgetPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgetPassword value)? forgetPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForgetPasswordEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ForgetPasswordImplCopyWith<$Res> {
  factory _$$ForgetPasswordImplCopyWith(_$ForgetPasswordImpl value,
          $Res Function(_$ForgetPasswordImpl) then) =
      __$$ForgetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgetPasswordImplCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res, _$ForgetPasswordImpl>
    implements _$$ForgetPasswordImplCopyWith<$Res> {
  __$$ForgetPasswordImplCopyWithImpl(
      _$ForgetPasswordImpl _value, $Res Function(_$ForgetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgetPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordImpl implements _ForgetPassword {
  const _$ForgetPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgetPasswordEvent.forgetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordImplCopyWith<_$ForgetPasswordImpl> get copyWith =>
      __$$ForgetPasswordImplCopyWithImpl<_$ForgetPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email) forgetPassword,
  }) {
    return forgetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email)? forgetPassword,
  }) {
    return forgetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email)? forgetPassword,
    required TResult orElse(),
  }) {
    if (forgetPassword != null) {
      return forgetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgetPassword value) forgetPassword,
  }) {
    return forgetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ForgetPassword value)? forgetPassword,
  }) {
    return forgetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgetPassword value)? forgetPassword,
    required TResult orElse(),
  }) {
    if (forgetPassword != null) {
      return forgetPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgetPassword implements ForgetPasswordEvent {
  const factory _ForgetPassword(final String email) = _$ForgetPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgetPasswordImplCopyWith<_$ForgetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgetPasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingResetEmail,
    required TResult Function() resetEmailSent,
    required TResult Function(String errorMessage) resetEmailSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingResetEmail,
    TResult? Function()? resetEmailSent,
    TResult? Function(String errorMessage)? resetEmailSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingResetEmail,
    TResult Function()? resetEmailSent,
    TResult Function(String errorMessage)? resetEmailSendError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingResetEmail value) sendingResetEmail,
    required TResult Function(_ResetEmailSent value) resetEmailSent,
    required TResult Function(_ResetEmailSendError value) resetEmailSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingResetEmail value)? sendingResetEmail,
    TResult? Function(_ResetEmailSent value)? resetEmailSent,
    TResult? Function(_ResetEmailSendError value)? resetEmailSendError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingResetEmail value)? sendingResetEmail,
    TResult Function(_ResetEmailSent value)? resetEmailSent,
    TResult Function(_ResetEmailSendError value)? resetEmailSendError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
          ForgetPasswordState value, $Res Function(ForgetPasswordState) then) =
      _$ForgetPasswordStateCopyWithImpl<$Res, ForgetPasswordState>;
}

/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res, $Val extends ForgetPasswordState>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

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
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ForgetPasswordState.initial()';
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
    required TResult Function() sendingResetEmail,
    required TResult Function() resetEmailSent,
    required TResult Function(String errorMessage) resetEmailSendError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingResetEmail,
    TResult? Function()? resetEmailSent,
    TResult? Function(String errorMessage)? resetEmailSendError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingResetEmail,
    TResult Function()? resetEmailSent,
    TResult Function(String errorMessage)? resetEmailSendError,
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
    required TResult Function(_SendingResetEmail value) sendingResetEmail,
    required TResult Function(_ResetEmailSent value) resetEmailSent,
    required TResult Function(_ResetEmailSendError value) resetEmailSendError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingResetEmail value)? sendingResetEmail,
    TResult? Function(_ResetEmailSent value)? resetEmailSent,
    TResult? Function(_ResetEmailSendError value)? resetEmailSendError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingResetEmail value)? sendingResetEmail,
    TResult Function(_ResetEmailSent value)? resetEmailSent,
    TResult Function(_ResetEmailSendError value)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForgetPasswordState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingResetEmailImplCopyWith<$Res> {
  factory _$$SendingResetEmailImplCopyWith(_$SendingResetEmailImpl value,
          $Res Function(_$SendingResetEmailImpl) then) =
      __$$SendingResetEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingResetEmailImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$SendingResetEmailImpl>
    implements _$$SendingResetEmailImplCopyWith<$Res> {
  __$$SendingResetEmailImplCopyWithImpl(_$SendingResetEmailImpl _value,
      $Res Function(_$SendingResetEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingResetEmailImpl implements _SendingResetEmail {
  const _$SendingResetEmailImpl();

  @override
  String toString() {
    return 'ForgetPasswordState.sendingResetEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingResetEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingResetEmail,
    required TResult Function() resetEmailSent,
    required TResult Function(String errorMessage) resetEmailSendError,
  }) {
    return sendingResetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingResetEmail,
    TResult? Function()? resetEmailSent,
    TResult? Function(String errorMessage)? resetEmailSendError,
  }) {
    return sendingResetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingResetEmail,
    TResult Function()? resetEmailSent,
    TResult Function(String errorMessage)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (sendingResetEmail != null) {
      return sendingResetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingResetEmail value) sendingResetEmail,
    required TResult Function(_ResetEmailSent value) resetEmailSent,
    required TResult Function(_ResetEmailSendError value) resetEmailSendError,
  }) {
    return sendingResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingResetEmail value)? sendingResetEmail,
    TResult? Function(_ResetEmailSent value)? resetEmailSent,
    TResult? Function(_ResetEmailSendError value)? resetEmailSendError,
  }) {
    return sendingResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingResetEmail value)? sendingResetEmail,
    TResult Function(_ResetEmailSent value)? resetEmailSent,
    TResult Function(_ResetEmailSendError value)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (sendingResetEmail != null) {
      return sendingResetEmail(this);
    }
    return orElse();
  }
}

abstract class _SendingResetEmail implements ForgetPasswordState {
  const factory _SendingResetEmail() = _$SendingResetEmailImpl;
}

/// @nodoc
abstract class _$$ResetEmailSentImplCopyWith<$Res> {
  factory _$$ResetEmailSentImplCopyWith(_$ResetEmailSentImpl value,
          $Res Function(_$ResetEmailSentImpl) then) =
      __$$ResetEmailSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetEmailSentImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$ResetEmailSentImpl>
    implements _$$ResetEmailSentImplCopyWith<$Res> {
  __$$ResetEmailSentImplCopyWithImpl(
      _$ResetEmailSentImpl _value, $Res Function(_$ResetEmailSentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetEmailSentImpl implements _ResetEmailSent {
  const _$ResetEmailSentImpl();

  @override
  String toString() {
    return 'ForgetPasswordState.resetEmailSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetEmailSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingResetEmail,
    required TResult Function() resetEmailSent,
    required TResult Function(String errorMessage) resetEmailSendError,
  }) {
    return resetEmailSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingResetEmail,
    TResult? Function()? resetEmailSent,
    TResult? Function(String errorMessage)? resetEmailSendError,
  }) {
    return resetEmailSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingResetEmail,
    TResult Function()? resetEmailSent,
    TResult Function(String errorMessage)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (resetEmailSent != null) {
      return resetEmailSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingResetEmail value) sendingResetEmail,
    required TResult Function(_ResetEmailSent value) resetEmailSent,
    required TResult Function(_ResetEmailSendError value) resetEmailSendError,
  }) {
    return resetEmailSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingResetEmail value)? sendingResetEmail,
    TResult? Function(_ResetEmailSent value)? resetEmailSent,
    TResult? Function(_ResetEmailSendError value)? resetEmailSendError,
  }) {
    return resetEmailSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingResetEmail value)? sendingResetEmail,
    TResult Function(_ResetEmailSent value)? resetEmailSent,
    TResult Function(_ResetEmailSendError value)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (resetEmailSent != null) {
      return resetEmailSent(this);
    }
    return orElse();
  }
}

abstract class _ResetEmailSent implements ForgetPasswordState {
  const factory _ResetEmailSent() = _$ResetEmailSentImpl;
}

/// @nodoc
abstract class _$$ResetEmailSendErrorImplCopyWith<$Res> {
  factory _$$ResetEmailSendErrorImplCopyWith(_$ResetEmailSendErrorImpl value,
          $Res Function(_$ResetEmailSendErrorImpl) then) =
      __$$ResetEmailSendErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ResetEmailSendErrorImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$ResetEmailSendErrorImpl>
    implements _$$ResetEmailSendErrorImplCopyWith<$Res> {
  __$$ResetEmailSendErrorImplCopyWithImpl(_$ResetEmailSendErrorImpl _value,
      $Res Function(_$ResetEmailSendErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ResetEmailSendErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetEmailSendErrorImpl implements _ResetEmailSendError {
  const _$ResetEmailSendErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ForgetPasswordState.resetEmailSendError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetEmailSendErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetEmailSendErrorImplCopyWith<_$ResetEmailSendErrorImpl> get copyWith =>
      __$$ResetEmailSendErrorImplCopyWithImpl<_$ResetEmailSendErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingResetEmail,
    required TResult Function() resetEmailSent,
    required TResult Function(String errorMessage) resetEmailSendError,
  }) {
    return resetEmailSendError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingResetEmail,
    TResult? Function()? resetEmailSent,
    TResult? Function(String errorMessage)? resetEmailSendError,
  }) {
    return resetEmailSendError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingResetEmail,
    TResult Function()? resetEmailSent,
    TResult Function(String errorMessage)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (resetEmailSendError != null) {
      return resetEmailSendError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingResetEmail value) sendingResetEmail,
    required TResult Function(_ResetEmailSent value) resetEmailSent,
    required TResult Function(_ResetEmailSendError value) resetEmailSendError,
  }) {
    return resetEmailSendError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingResetEmail value)? sendingResetEmail,
    TResult? Function(_ResetEmailSent value)? resetEmailSent,
    TResult? Function(_ResetEmailSendError value)? resetEmailSendError,
  }) {
    return resetEmailSendError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingResetEmail value)? sendingResetEmail,
    TResult Function(_ResetEmailSent value)? resetEmailSent,
    TResult Function(_ResetEmailSendError value)? resetEmailSendError,
    required TResult orElse(),
  }) {
    if (resetEmailSendError != null) {
      return resetEmailSendError(this);
    }
    return orElse();
  }
}

abstract class _ResetEmailSendError implements ForgetPasswordState {
  const factory _ResetEmailSendError(final String errorMessage) =
      _$ResetEmailSendErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ResetEmailSendErrorImplCopyWith<_$ResetEmailSendErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
