// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendVerificationEmail value) sendVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendVerificationEmail value)? sendVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendVerificationEmail value)? sendVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailEventCopyWith<$Res> {
  factory $VerifyEmailEventCopyWith(
          VerifyEmailEvent value, $Res Function(VerifyEmailEvent) then) =
      _$VerifyEmailEventCopyWithImpl<$Res, VerifyEmailEvent>;
}

/// @nodoc
class _$VerifyEmailEventCopyWithImpl<$Res, $Val extends VerifyEmailEvent>
    implements $VerifyEmailEventCopyWith<$Res> {
  _$VerifyEmailEventCopyWithImpl(this._value, this._then);

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
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'VerifyEmailEvent.started()';
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
    required TResult Function() sendVerification,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendVerification,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendVerification,
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
    required TResult Function(_SendVerificationEmail value) sendVerification,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendVerificationEmail value)? sendVerification,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendVerificationEmail value)? sendVerification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements VerifyEmailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendVerificationEmailImplCopyWith<$Res> {
  factory _$$SendVerificationEmailImplCopyWith(
          _$SendVerificationEmailImpl value,
          $Res Function(_$SendVerificationEmailImpl) then) =
      __$$SendVerificationEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendVerificationEmailImplCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$SendVerificationEmailImpl>
    implements _$$SendVerificationEmailImplCopyWith<$Res> {
  __$$SendVerificationEmailImplCopyWithImpl(_$SendVerificationEmailImpl _value,
      $Res Function(_$SendVerificationEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendVerificationEmailImpl implements _SendVerificationEmail {
  const _$SendVerificationEmailImpl();

  @override
  String toString() {
    return 'VerifyEmailEvent.sendVerification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVerificationEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendVerification,
  }) {
    return sendVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendVerification,
  }) {
    return sendVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendVerification,
    required TResult orElse(),
  }) {
    if (sendVerification != null) {
      return sendVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendVerificationEmail value) sendVerification,
  }) {
    return sendVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendVerificationEmail value)? sendVerification,
  }) {
    return sendVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendVerificationEmail value)? sendVerification,
    required TResult orElse(),
  }) {
    if (sendVerification != null) {
      return sendVerification(this);
    }
    return orElse();
  }
}

abstract class _SendVerificationEmail implements VerifyEmailEvent {
  const factory _SendVerificationEmail() = _$SendVerificationEmailImpl;
}

/// @nodoc
mixin _$VerifyEmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() sentSuccess,
    required TResult Function(String errormessage) sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? sentSuccess,
    TResult? Function(String errormessage)? sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? sentSuccess,
    TResult Function(String errormessage)? sentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sending value) sending,
    required TResult Function(_SentSuccess value) sentSuccess,
    required TResult Function(_SentError value) sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_SentSuccess value)? sentSuccess,
    TResult? Function(_SentError value)? sentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sending value)? sending,
    TResult Function(_SentSuccess value)? sentSuccess,
    TResult Function(_SentError value)? sentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
          VerifyEmailState value, $Res Function(VerifyEmailState) then) =
      _$VerifyEmailStateCopyWithImpl<$Res, VerifyEmailState>;
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res, $Val extends VerifyEmailState>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

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
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'VerifyEmailState.initial()';
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
    required TResult Function() sending,
    required TResult Function() sentSuccess,
    required TResult Function(String errormessage) sentError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? sentSuccess,
    TResult? Function(String errormessage)? sentError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? sentSuccess,
    TResult Function(String errormessage)? sentError,
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
    required TResult Function(_Sending value) sending,
    required TResult Function(_SentSuccess value) sentSuccess,
    required TResult Function(_SentError value) sentError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_SentSuccess value)? sentSuccess,
    TResult? Function(_SentError value)? sentError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sending value)? sending,
    TResult Function(_SentSuccess value)? sentSuccess,
    TResult Function(_SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyEmailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingImplCopyWith<$Res> {
  factory _$$SendingImplCopyWith(
          _$SendingImpl value, $Res Function(_$SendingImpl) then) =
      __$$SendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingImplCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$SendingImpl>
    implements _$$SendingImplCopyWith<$Res> {
  __$$SendingImplCopyWithImpl(
      _$SendingImpl _value, $Res Function(_$SendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingImpl implements _Sending {
  const _$SendingImpl();

  @override
  String toString() {
    return 'VerifyEmailState.sending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() sentSuccess,
    required TResult Function(String errormessage) sentError,
  }) {
    return sending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? sentSuccess,
    TResult? Function(String errormessage)? sentError,
  }) {
    return sending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? sentSuccess,
    TResult Function(String errormessage)? sentError,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sending value) sending,
    required TResult Function(_SentSuccess value) sentSuccess,
    required TResult Function(_SentError value) sentError,
  }) {
    return sending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_SentSuccess value)? sentSuccess,
    TResult? Function(_SentError value)? sentError,
  }) {
    return sending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sending value)? sending,
    TResult Function(_SentSuccess value)? sentSuccess,
    TResult Function(_SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (sending != null) {
      return sending(this);
    }
    return orElse();
  }
}

abstract class _Sending implements VerifyEmailState {
  const factory _Sending() = _$SendingImpl;
}

/// @nodoc
abstract class _$$SentSuccessImplCopyWith<$Res> {
  factory _$$SentSuccessImplCopyWith(
          _$SentSuccessImpl value, $Res Function(_$SentSuccessImpl) then) =
      __$$SentSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentSuccessImplCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$SentSuccessImpl>
    implements _$$SentSuccessImplCopyWith<$Res> {
  __$$SentSuccessImplCopyWithImpl(
      _$SentSuccessImpl _value, $Res Function(_$SentSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SentSuccessImpl implements _SentSuccess {
  const _$SentSuccessImpl();

  @override
  String toString() {
    return 'VerifyEmailState.sentSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SentSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() sentSuccess,
    required TResult Function(String errormessage) sentError,
  }) {
    return sentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? sentSuccess,
    TResult? Function(String errormessage)? sentError,
  }) {
    return sentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? sentSuccess,
    TResult Function(String errormessage)? sentError,
    required TResult orElse(),
  }) {
    if (sentSuccess != null) {
      return sentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sending value) sending,
    required TResult Function(_SentSuccess value) sentSuccess,
    required TResult Function(_SentError value) sentError,
  }) {
    return sentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_SentSuccess value)? sentSuccess,
    TResult? Function(_SentError value)? sentError,
  }) {
    return sentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sending value)? sending,
    TResult Function(_SentSuccess value)? sentSuccess,
    TResult Function(_SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (sentSuccess != null) {
      return sentSuccess(this);
    }
    return orElse();
  }
}

abstract class _SentSuccess implements VerifyEmailState {
  const factory _SentSuccess() = _$SentSuccessImpl;
}

/// @nodoc
abstract class _$$SentErrorImplCopyWith<$Res> {
  factory _$$SentErrorImplCopyWith(
          _$SentErrorImpl value, $Res Function(_$SentErrorImpl) then) =
      __$$SentErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errormessage});
}

/// @nodoc
class __$$SentErrorImplCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$SentErrorImpl>
    implements _$$SentErrorImplCopyWith<$Res> {
  __$$SentErrorImplCopyWithImpl(
      _$SentErrorImpl _value, $Res Function(_$SentErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errormessage = null,
  }) {
    return _then(_$SentErrorImpl(
      null == errormessage
          ? _value.errormessage
          : errormessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SentErrorImpl implements _SentError {
  const _$SentErrorImpl(this.errormessage);

  @override
  final String errormessage;

  @override
  String toString() {
    return 'VerifyEmailState.sentError(errormessage: $errormessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentErrorImpl &&
            (identical(other.errormessage, errormessage) ||
                other.errormessage == errormessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errormessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentErrorImplCopyWith<_$SentErrorImpl> get copyWith =>
      __$$SentErrorImplCopyWithImpl<_$SentErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sending,
    required TResult Function() sentSuccess,
    required TResult Function(String errormessage) sentError,
  }) {
    return sentError(errormessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sending,
    TResult? Function()? sentSuccess,
    TResult? Function(String errormessage)? sentError,
  }) {
    return sentError?.call(errormessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sending,
    TResult Function()? sentSuccess,
    TResult Function(String errormessage)? sentError,
    required TResult orElse(),
  }) {
    if (sentError != null) {
      return sentError(errormessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sending value) sending,
    required TResult Function(_SentSuccess value) sentSuccess,
    required TResult Function(_SentError value) sentError,
  }) {
    return sentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sending value)? sending,
    TResult? Function(_SentSuccess value)? sentSuccess,
    TResult? Function(_SentError value)? sentError,
  }) {
    return sentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sending value)? sending,
    TResult Function(_SentSuccess value)? sentSuccess,
    TResult Function(_SentError value)? sentError,
    required TResult orElse(),
  }) {
    if (sentError != null) {
      return sentError(this);
    }
    return orElse();
  }
}

abstract class _SentError implements VerifyEmailState {
  const factory _SentError(final String errormessage) = _$SentErrorImpl;

  String get errormessage;
  @JsonKey(ignore: true)
  _$$SentErrorImplCopyWith<_$SentErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
