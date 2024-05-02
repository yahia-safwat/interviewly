// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_subcategory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddSubcategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user, SubcategoryEntity subcategory)
        addSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subcategory)?
        addSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subcategory)?
        addSubcategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSubcategory value) addSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSubcategory value)? addSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSubcategory value)? addSubcategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSubcategoryEventCopyWith<$Res> {
  factory $AddSubcategoryEventCopyWith(
          AddSubcategoryEvent value, $Res Function(AddSubcategoryEvent) then) =
      _$AddSubcategoryEventCopyWithImpl<$Res, AddSubcategoryEvent>;
}

/// @nodoc
class _$AddSubcategoryEventCopyWithImpl<$Res, $Val extends AddSubcategoryEvent>
    implements $AddSubcategoryEventCopyWith<$Res> {
  _$AddSubcategoryEventCopyWithImpl(this._value, this._then);

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
    extends _$AddSubcategoryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddSubcategoryEvent.started()';
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
    required TResult Function(UserEntity user, SubcategoryEntity subcategory)
        addSubcategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subcategory)?
        addSubcategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subcategory)?
        addSubcategory,
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
    required TResult Function(_AddSubcategory value) addSubcategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSubcategory value)? addSubcategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSubcategory value)? addSubcategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddSubcategoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddSubcategoryImplCopyWith<$Res> {
  factory _$$AddSubcategoryImplCopyWith(_$AddSubcategoryImpl value,
          $Res Function(_$AddSubcategoryImpl) then) =
      __$$AddSubcategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user, SubcategoryEntity subcategory});
}

/// @nodoc
class __$$AddSubcategoryImplCopyWithImpl<$Res>
    extends _$AddSubcategoryEventCopyWithImpl<$Res, _$AddSubcategoryImpl>
    implements _$$AddSubcategoryImplCopyWith<$Res> {
  __$$AddSubcategoryImplCopyWithImpl(
      _$AddSubcategoryImpl _value, $Res Function(_$AddSubcategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? subcategory = null,
  }) {
    return _then(_$AddSubcategoryImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      subcategory: null == subcategory
          ? _value.subcategory
          : subcategory // ignore: cast_nullable_to_non_nullable
              as SubcategoryEntity,
    ));
  }
}

/// @nodoc

class _$AddSubcategoryImpl implements _AddSubcategory {
  const _$AddSubcategoryImpl({required this.user, required this.subcategory});

  @override
  final UserEntity user;
  @override
  final SubcategoryEntity subcategory;

  @override
  String toString() {
    return 'AddSubcategoryEvent.addSubcategory(user: $user, subcategory: $subcategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubcategoryImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.subcategory, subcategory) ||
                other.subcategory == subcategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, subcategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubcategoryImplCopyWith<_$AddSubcategoryImpl> get copyWith =>
      __$$AddSubcategoryImplCopyWithImpl<_$AddSubcategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity user, SubcategoryEntity subcategory)
        addSubcategory,
  }) {
    return addSubcategory(user, subcategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subcategory)?
        addSubcategory,
  }) {
    return addSubcategory?.call(user, subcategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subcategory)?
        addSubcategory,
    required TResult orElse(),
  }) {
    if (addSubcategory != null) {
      return addSubcategory(user, subcategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSubcategory value) addSubcategory,
  }) {
    return addSubcategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSubcategory value)? addSubcategory,
  }) {
    return addSubcategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSubcategory value)? addSubcategory,
    required TResult orElse(),
  }) {
    if (addSubcategory != null) {
      return addSubcategory(this);
    }
    return orElse();
  }
}

abstract class _AddSubcategory implements AddSubcategoryEvent {
  const factory _AddSubcategory(
      {required final UserEntity user,
      required final SubcategoryEntity subcategory}) = _$AddSubcategoryImpl;

  UserEntity get user;
  SubcategoryEntity get subcategory;
  @JsonKey(ignore: true)
  _$$AddSubcategoryImplCopyWith<_$AddSubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddSubcategoryState {
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
abstract class $AddSubcategoryStateCopyWith<$Res> {
  factory $AddSubcategoryStateCopyWith(
          AddSubcategoryState value, $Res Function(AddSubcategoryState) then) =
      _$AddSubcategoryStateCopyWithImpl<$Res, AddSubcategoryState>;
}

/// @nodoc
class _$AddSubcategoryStateCopyWithImpl<$Res, $Val extends AddSubcategoryState>
    implements $AddSubcategoryStateCopyWith<$Res> {
  _$AddSubcategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$AddSubcategoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AddSubcategoryState.initial()';
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

abstract class _Initial implements AddSubcategoryState {
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
    extends _$AddSubcategoryStateCopyWithImpl<$Res, _$AddingImpl>
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
    return 'AddSubcategoryState.adding()';
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

abstract class _Adding implements AddSubcategoryState {
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
    extends _$AddSubcategoryStateCopyWithImpl<$Res, _$AddSuccessImpl>
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
    return 'AddSubcategoryState.addSuccess(user: $user)';
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

abstract class _AddSuccess implements AddSubcategoryState {
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
    extends _$AddSubcategoryStateCopyWithImpl<$Res, _$AddFailureImpl>
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
    return 'AddSubcategoryState.addFailure(message: $message)';
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

abstract class _AddFailure implements AddSubcategoryState {
  const factory _AddFailure(final String message) = _$AddFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AddFailureImplCopyWith<_$AddFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
