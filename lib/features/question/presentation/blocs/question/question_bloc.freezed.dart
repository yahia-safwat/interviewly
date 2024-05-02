// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

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
    extends _$QuestionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QuestionState.initial()';
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
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
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
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchingImplCopyWith<$Res> {
  factory _$$FetchingImplCopyWith(
          _$FetchingImpl value, $Res Function(_$FetchingImpl) then) =
      __$$FetchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$FetchingImpl>
    implements _$$FetchingImplCopyWith<$Res> {
  __$$FetchingImplCopyWithImpl(
      _$FetchingImpl _value, $Res Function(_$FetchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchingImpl implements _Fetching {
  const _$FetchingImpl();

  @override
  String toString() {
    return 'QuestionState.fetching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements QuestionState {
  const factory _Fetching() = _$FetchingImpl;
}

/// @nodoc
abstract class _$$FetchSuccessImplCopyWith<$Res> {
  factory _$$FetchSuccessImplCopyWith(
          _$FetchSuccessImpl value, $Res Function(_$FetchSuccessImpl) then) =
      __$$FetchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionEntity> questions});
}

/// @nodoc
class __$$FetchSuccessImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$FetchSuccessImpl>
    implements _$$FetchSuccessImplCopyWith<$Res> {
  __$$FetchSuccessImplCopyWithImpl(
      _$FetchSuccessImpl _value, $Res Function(_$FetchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$FetchSuccessImpl(
      null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
    ));
  }
}

/// @nodoc

class _$FetchSuccessImpl implements _FetchSuccess {
  const _$FetchSuccessImpl(final List<QuestionEntity> questions)
      : _questions = questions;

  final List<QuestionEntity> _questions;
  @override
  List<QuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionState.fetchSuccess(questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      __$$FetchSuccessImplCopyWithImpl<_$FetchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return fetchSuccess(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return fetchSuccess?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements QuestionState {
  const factory _FetchSuccess(final List<QuestionEntity> questions) =
      _$FetchSuccessImpl;

  List<QuestionEntity> get questions;
  @JsonKey(ignore: true)
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFailureImplCopyWith<$Res> {
  factory _$$FetchFailureImplCopyWith(
          _$FetchFailureImpl value, $Res Function(_$FetchFailureImpl) then) =
      __$$FetchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FetchFailureImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$FetchFailureImpl>
    implements _$$FetchFailureImplCopyWith<$Res> {
  __$$FetchFailureImplCopyWithImpl(
      _$FetchFailureImpl _value, $Res Function(_$FetchFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FetchFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchFailureImpl implements _FetchFailure {
  const _$FetchFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'QuestionState.fetchFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFailureImplCopyWith<_$FetchFailureImpl> get copyWith =>
      __$$FetchFailureImplCopyWithImpl<_$FetchFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return fetchFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return fetchFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return fetchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements QuestionState {
  const factory _FetchFailure(final String errorMessage) = _$FetchFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FetchFailureImplCopyWith<_$FetchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglingImplCopyWith<$Res> {
  factory _$$TogglingImplCopyWith(
          _$TogglingImpl value, $Res Function(_$TogglingImpl) then) =
      __$$TogglingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglingImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$TogglingImpl>
    implements _$$TogglingImplCopyWith<$Res> {
  __$$TogglingImplCopyWithImpl(
      _$TogglingImpl _value, $Res Function(_$TogglingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglingImpl implements _Toggling {
  const _$TogglingImpl();

  @override
  String toString() {
    return 'QuestionState.toggling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return toggling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return toggling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggling != null) {
      return toggling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return toggling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return toggling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggling != null) {
      return toggling(this);
    }
    return orElse();
  }
}

abstract class _Toggling implements QuestionState {
  const factory _Toggling() = _$TogglingImpl;
}

/// @nodoc
abstract class _$$ToggleSuccessImplCopyWith<$Res> {
  factory _$$ToggleSuccessImplCopyWith(
          _$ToggleSuccessImpl value, $Res Function(_$ToggleSuccessImpl) then) =
      __$$ToggleSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$ToggleSuccessImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$ToggleSuccessImpl>
    implements _$$ToggleSuccessImplCopyWith<$Res> {
  __$$ToggleSuccessImplCopyWithImpl(
      _$ToggleSuccessImpl _value, $Res Function(_$ToggleSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ToggleSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$ToggleSuccessImpl implements _ToggleSuccess {
  const _$ToggleSuccessImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'QuestionState.toggleSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSuccessImplCopyWith<_$ToggleSuccessImpl> get copyWith =>
      __$$ToggleSuccessImplCopyWithImpl<_$ToggleSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return toggleSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return toggleSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggleSuccess != null) {
      return toggleSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return toggleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return toggleSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggleSuccess != null) {
      return toggleSuccess(this);
    }
    return orElse();
  }
}

abstract class _ToggleSuccess implements QuestionState {
  const factory _ToggleSuccess(final UserEntity user) = _$ToggleSuccessImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$ToggleSuccessImplCopyWith<_$ToggleSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFailureImplCopyWith<$Res> {
  factory _$$ToggleFailureImplCopyWith(
          _$ToggleFailureImpl value, $Res Function(_$ToggleFailureImpl) then) =
      __$$ToggleFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ToggleFailureImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$ToggleFailureImpl>
    implements _$$ToggleFailureImplCopyWith<$Res> {
  __$$ToggleFailureImplCopyWithImpl(
      _$ToggleFailureImpl _value, $Res Function(_$ToggleFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ToggleFailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleFailureImpl implements _ToggleFailure {
  const _$ToggleFailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'QuestionState.toggleFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFailureImplCopyWith<_$ToggleFailureImpl> get copyWith =>
      __$$ToggleFailureImplCopyWithImpl<_$ToggleFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<QuestionEntity> questions) fetchSuccess,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function() toggling,
    required TResult Function(UserEntity user) toggleSuccess,
    required TResult Function(String errorMessage) toggleFailure,
  }) {
    return toggleFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult? Function(String errorMessage)? fetchFailure,
    TResult? Function()? toggling,
    TResult? Function(UserEntity user)? toggleSuccess,
    TResult? Function(String errorMessage)? toggleFailure,
  }) {
    return toggleFailure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<QuestionEntity> questions)? fetchSuccess,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function()? toggling,
    TResult Function(UserEntity user)? toggleSuccess,
    TResult Function(String errorMessage)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggleFailure != null) {
      return toggleFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_Toggling value) toggling,
    required TResult Function(_ToggleSuccess value) toggleSuccess,
    required TResult Function(_ToggleFailure value) toggleFailure,
  }) {
    return toggleFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchFailure value)? fetchFailure,
    TResult? Function(_Toggling value)? toggling,
    TResult? Function(_ToggleSuccess value)? toggleSuccess,
    TResult? Function(_ToggleFailure value)? toggleFailure,
  }) {
    return toggleFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_Toggling value)? toggling,
    TResult Function(_ToggleSuccess value)? toggleSuccess,
    TResult Function(_ToggleFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggleFailure != null) {
      return toggleFailure(this);
    }
    return orElse();
  }
}

abstract class _ToggleFailure implements QuestionState {
  const factory _ToggleFailure(final String errorMessage) = _$ToggleFailureImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ToggleFailureImplCopyWith<_$ToggleFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
