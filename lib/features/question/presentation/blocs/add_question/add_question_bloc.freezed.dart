// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddQuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user, QuestionEntity question)
        addQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, QuestionEntity question)? addQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, QuestionEntity question)? addQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuestion value) addQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuestion value)? addQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuestion value)? addQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddQuestionEventCopyWith<$Res> {
  factory $AddQuestionEventCopyWith(
          AddQuestionEvent value, $Res Function(AddQuestionEvent) then) =
      _$AddQuestionEventCopyWithImpl<$Res, AddQuestionEvent>;
}

/// @nodoc
class _$AddQuestionEventCopyWithImpl<$Res, $Val extends AddQuestionEvent>
    implements $AddQuestionEventCopyWith<$Res> {
  _$AddQuestionEventCopyWithImpl(this._value, this._then);

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
    extends _$AddQuestionEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddQuestionEvent.started()';
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
    required TResult Function(UserEntity user, QuestionEntity question)
        addQuestion,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, QuestionEntity question)? addQuestion,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, QuestionEntity question)? addQuestion,
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
    required TResult Function(_AddQuestion value) addQuestion,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuestion value)? addQuestion,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuestion value)? addQuestion,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddQuestionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddQuestionImplCopyWith<$Res> {
  factory _$$AddQuestionImplCopyWith(
          _$AddQuestionImpl value, $Res Function(_$AddQuestionImpl) then) =
      __$$AddQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user, QuestionEntity question});
}

/// @nodoc
class __$$AddQuestionImplCopyWithImpl<$Res>
    extends _$AddQuestionEventCopyWithImpl<$Res, _$AddQuestionImpl>
    implements _$$AddQuestionImplCopyWith<$Res> {
  __$$AddQuestionImplCopyWithImpl(
      _$AddQuestionImpl _value, $Res Function(_$AddQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? question = null,
  }) {
    return _then(_$AddQuestionImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionEntity,
    ));
  }
}

/// @nodoc

class _$AddQuestionImpl implements _AddQuestion {
  const _$AddQuestionImpl({required this.user, required this.question});

  @override
  final UserEntity user;
  @override
  final QuestionEntity question;

  @override
  String toString() {
    return 'AddQuestionEvent.addQuestion(user: $user, question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddQuestionImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddQuestionImplCopyWith<_$AddQuestionImpl> get copyWith =>
      __$$AddQuestionImplCopyWithImpl<_$AddQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user, QuestionEntity question)
        addQuestion,
  }) {
    return addQuestion(user, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, QuestionEntity question)? addQuestion,
  }) {
    return addQuestion?.call(user, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, QuestionEntity question)? addQuestion,
    required TResult orElse(),
  }) {
    if (addQuestion != null) {
      return addQuestion(user, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddQuestion value) addQuestion,
  }) {
    return addQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddQuestion value)? addQuestion,
  }) {
    return addQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddQuestion value)? addQuestion,
    required TResult orElse(),
  }) {
    if (addQuestion != null) {
      return addQuestion(this);
    }
    return orElse();
  }
}

abstract class _AddQuestion implements AddQuestionEvent {
  const factory _AddQuestion(
      {required final UserEntity user,
      required final QuestionEntity question}) = _$AddQuestionImpl;

  UserEntity get user;
  QuestionEntity get question;
  @JsonKey(ignore: true)
  _$$AddQuestionImplCopyWith<_$AddQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddQuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(UserEntity user) addSuccess,
    required TResult Function(String message) addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(UserEntity user)? addSuccess,
    TResult? Function(String message)? addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(UserEntity user)? addSuccess,
    TResult Function(String message)? addFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_AddFailure value)? addFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddQuestionStateCopyWith<$Res> {
  factory $AddQuestionStateCopyWith(
          AddQuestionState value, $Res Function(AddQuestionState) then) =
      _$AddQuestionStateCopyWithImpl<$Res, AddQuestionState>;
}

/// @nodoc
class _$AddQuestionStateCopyWithImpl<$Res, $Val extends AddQuestionState>
    implements $AddQuestionStateCopyWith<$Res> {
  _$AddQuestionStateCopyWithImpl(this._value, this._then);

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
    extends _$AddQuestionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AddQuestionState.initial()';
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
    required TResult Function() adding,
    required TResult Function(UserEntity user) addSuccess,
    required TResult Function(String message) addFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(UserEntity user)? addSuccess,
    TResult? Function(String message)? addFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(UserEntity user)? addSuccess,
    TResult Function(String message)? addFailure,
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
    required TResult Function(_Adding value) adding,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_AddFailure value)? addFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddQuestionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddingImplCopyWith<$Res> {
  factory _$$AddingImplCopyWith(
          _$AddingImpl value, $Res Function(_$AddingImpl) then) =
      __$$AddingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddingImplCopyWithImpl<$Res>
    extends _$AddQuestionStateCopyWithImpl<$Res, _$AddingImpl>
    implements _$$AddingImplCopyWith<$Res> {
  __$$AddingImplCopyWithImpl(
      _$AddingImpl _value, $Res Function(_$AddingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddingImpl implements _Adding {
  const _$AddingImpl();

  @override
  String toString() {
    return 'AddQuestionState.adding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(UserEntity user) addSuccess,
    required TResult Function(String message) addFailure,
  }) {
    return adding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(UserEntity user)? addSuccess,
    TResult? Function(String message)? addFailure,
  }) {
    return adding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(UserEntity user)? addSuccess,
    TResult Function(String message)? addFailure,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return adding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_AddFailure value)? addFailure,
  }) {
    return adding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (adding != null) {
      return adding(this);
    }
    return orElse();
  }
}

abstract class _Adding implements AddQuestionState {
  const factory _Adding() = _$AddingImpl;
}

/// @nodoc
abstract class _$$AddSuccessImplCopyWith<$Res> {
  factory _$$AddSuccessImplCopyWith(
          _$AddSuccessImpl value, $Res Function(_$AddSuccessImpl) then) =
      __$$AddSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$AddSuccessImplCopyWithImpl<$Res>
    extends _$AddQuestionStateCopyWithImpl<$Res, _$AddSuccessImpl>
    implements _$$AddSuccessImplCopyWith<$Res> {
  __$$AddSuccessImplCopyWithImpl(
      _$AddSuccessImpl _value, $Res Function(_$AddSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AddSuccessImpl implements _AddSuccess {
  const _$AddSuccessImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'AddQuestionState.addSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSuccessImplCopyWith<_$AddSuccessImpl> get copyWith =>
      __$$AddSuccessImplCopyWithImpl<_$AddSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(UserEntity user) addSuccess,
    required TResult Function(String message) addFailure,
  }) {
    return addSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(UserEntity user)? addSuccess,
    TResult? Function(String message)? addFailure,
  }) {
    return addSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(UserEntity user)? addSuccess,
    TResult Function(String message)? addFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_AddFailure value)? addFailure,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements AddQuestionState {
  const factory _AddSuccess(final UserEntity user) = _$AddSuccessImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$AddSuccessImplCopyWith<_$AddSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFailureImplCopyWith<$Res> {
  factory _$$AddFailureImplCopyWith(
          _$AddFailureImpl value, $Res Function(_$AddFailureImpl) then) =
      __$$AddFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddFailureImplCopyWithImpl<$Res>
    extends _$AddQuestionStateCopyWithImpl<$Res, _$AddFailureImpl>
    implements _$$AddFailureImplCopyWith<$Res> {
  __$$AddFailureImplCopyWithImpl(
      _$AddFailureImpl _value, $Res Function(_$AddFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFailureImpl implements _AddFailure {
  const _$AddFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddQuestionState.addFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFailureImplCopyWith<_$AddFailureImpl> get copyWith =>
      __$$AddFailureImplCopyWithImpl<_$AddFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() adding,
    required TResult Function(UserEntity user) addSuccess,
    required TResult Function(String message) addFailure,
  }) {
    return addFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? adding,
    TResult? Function(UserEntity user)? addSuccess,
    TResult? Function(String message)? addFailure,
  }) {
    return addFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? adding,
    TResult Function(UserEntity user)? addSuccess,
    TResult Function(String message)? addFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Adding value) adding,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_AddFailure value) addFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Adding value)? adding,
    TResult? Function(_AddSuccess value)? addSuccess,
    TResult? Function(_AddFailure value)? addFailure,
  }) {
    return addFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Adding value)? adding,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_AddFailure value)? addFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class _AddFailure implements AddQuestionState {
  const factory _AddFailure(final String message) = _$AddFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AddFailureImplCopyWith<_$AddFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
