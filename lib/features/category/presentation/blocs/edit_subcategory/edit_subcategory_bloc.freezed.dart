// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_subcategory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditSubcategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            UserEntity user, SubcategoryEntity subCategoryEntity)
        editSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        editSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        editSubcategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditSubcategory value) editSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditSubcategory value)? editSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditSubcategory value)? editSubcategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSubcategoryEventCopyWith<$Res> {
  factory $EditSubcategoryEventCopyWith(EditSubcategoryEvent value,
          $Res Function(EditSubcategoryEvent) then) =
      _$EditSubcategoryEventCopyWithImpl<$Res, EditSubcategoryEvent>;
}

/// @nodoc
class _$EditSubcategoryEventCopyWithImpl<$Res,
        $Val extends EditSubcategoryEvent>
    implements $EditSubcategoryEventCopyWith<$Res> {
  _$EditSubcategoryEventCopyWithImpl(this._value, this._then);

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
    extends _$EditSubcategoryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'EditSubcategoryEvent.started()';
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
    required TResult Function(
            UserEntity user, SubcategoryEntity subCategoryEntity)
        editSubcategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        editSubcategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        editSubcategory,
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
    required TResult Function(_EditSubcategory value) editSubcategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditSubcategory value)? editSubcategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditSubcategory value)? editSubcategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditSubcategoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$EditSubcategoryImplCopyWith<$Res> {
  factory _$$EditSubcategoryImplCopyWith(_$EditSubcategoryImpl value,
          $Res Function(_$EditSubcategoryImpl) then) =
      __$$EditSubcategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user, SubcategoryEntity subCategoryEntity});
}

/// @nodoc
class __$$EditSubcategoryImplCopyWithImpl<$Res>
    extends _$EditSubcategoryEventCopyWithImpl<$Res, _$EditSubcategoryImpl>
    implements _$$EditSubcategoryImplCopyWith<$Res> {
  __$$EditSubcategoryImplCopyWithImpl(
      _$EditSubcategoryImpl _value, $Res Function(_$EditSubcategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? subCategoryEntity = null,
  }) {
    return _then(_$EditSubcategoryImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      null == subCategoryEntity
          ? _value.subCategoryEntity
          : subCategoryEntity // ignore: cast_nullable_to_non_nullable
              as SubcategoryEntity,
    ));
  }
}

/// @nodoc

class _$EditSubcategoryImpl implements _EditSubcategory {
  const _$EditSubcategoryImpl(this.user, this.subCategoryEntity);

  @override
  final UserEntity user;
  @override
  final SubcategoryEntity subCategoryEntity;

  @override
  String toString() {
    return 'EditSubcategoryEvent.editSubcategory(user: $user, subCategoryEntity: $subCategoryEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubcategoryImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.subCategoryEntity, subCategoryEntity) ||
                other.subCategoryEntity == subCategoryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, subCategoryEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSubcategoryImplCopyWith<_$EditSubcategoryImpl> get copyWith =>
      __$$EditSubcategoryImplCopyWithImpl<_$EditSubcategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            UserEntity user, SubcategoryEntity subCategoryEntity)
        editSubcategory,
  }) {
    return editSubcategory(user, subCategoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        editSubcategory,
  }) {
    return editSubcategory?.call(user, subCategoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        editSubcategory,
    required TResult orElse(),
  }) {
    if (editSubcategory != null) {
      return editSubcategory(user, subCategoryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditSubcategory value) editSubcategory,
  }) {
    return editSubcategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_EditSubcategory value)? editSubcategory,
  }) {
    return editSubcategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditSubcategory value)? editSubcategory,
    required TResult orElse(),
  }) {
    if (editSubcategory != null) {
      return editSubcategory(this);
    }
    return orElse();
  }
}

abstract class _EditSubcategory implements EditSubcategoryEvent {
  const factory _EditSubcategory(
          final UserEntity user, final SubcategoryEntity subCategoryEntity) =
      _$EditSubcategoryImpl;

  UserEntity get user;
  SubcategoryEntity get subCategoryEntity;
  @JsonKey(ignore: true)
  _$$EditSubcategoryImplCopyWith<_$EditSubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditSubcategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMsg) editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMsg)? editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMsg)? editFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditFailure value) editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditFailure value)? editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditFailure value)? editFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSubcategoryStateCopyWith<$Res> {
  factory $EditSubcategoryStateCopyWith(EditSubcategoryState value,
          $Res Function(EditSubcategoryState) then) =
      _$EditSubcategoryStateCopyWithImpl<$Res, EditSubcategoryState>;
}

/// @nodoc
class _$EditSubcategoryStateCopyWithImpl<$Res,
        $Val extends EditSubcategoryState>
    implements $EditSubcategoryStateCopyWith<$Res> {
  _$EditSubcategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$EditSubcategoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EditSubcategoryState.initial()';
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
    required TResult Function(String errorMsg) editFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMsg)? editFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMsg)? editFailure,
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
    required TResult Function(_EditFailure value) editFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditFailure value)? editFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditSubcategoryState {
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
    extends _$EditSubcategoryStateCopyWithImpl<$Res, _$EditingImpl>
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
    return 'EditSubcategoryState.editing()';
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
    required TResult Function(String errorMsg) editFailure,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMsg)? editFailure,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMsg)? editFailure,
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
    required TResult Function(_EditFailure value) editFailure,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditFailure value)? editFailure,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class _Editing implements EditSubcategoryState {
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
    extends _$EditSubcategoryStateCopyWithImpl<$Res, _$EditSuccessImpl>
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
    return 'EditSubcategoryState.editSuccess(user: $user)';
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
    required TResult Function(String errorMsg) editFailure,
  }) {
    return editSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMsg)? editFailure,
  }) {
    return editSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMsg)? editFailure,
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
    required TResult Function(_EditFailure value) editFailure,
  }) {
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditFailure value)? editFailure,
  }) {
    return editSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditSuccess implements EditSubcategoryState {
  const factory _EditSuccess(final UserEntity user) = _$EditSuccessImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$EditSuccessImplCopyWith<_$EditSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditFailureImplCopyWith<$Res> {
  factory _$$EditFailureImplCopyWith(
          _$EditFailureImpl value, $Res Function(_$EditFailureImpl) then) =
      __$$EditFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$EditFailureImplCopyWithImpl<$Res>
    extends _$EditSubcategoryStateCopyWithImpl<$Res, _$EditFailureImpl>
    implements _$$EditFailureImplCopyWith<$Res> {
  __$$EditFailureImplCopyWithImpl(
      _$EditFailureImpl _value, $Res Function(_$EditFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$EditFailureImpl(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditFailureImpl implements _EditFailure {
  const _$EditFailureImpl(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'EditSubcategoryState.editFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditFailureImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditFailureImplCopyWith<_$EditFailureImpl> get copyWith =>
      __$$EditFailureImplCopyWithImpl<_$EditFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() editing,
    required TResult Function(UserEntity user) editSuccess,
    required TResult Function(String errorMsg) editFailure,
  }) {
    return editFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? editing,
    TResult? Function(UserEntity user)? editSuccess,
    TResult? Function(String errorMsg)? editFailure,
  }) {
    return editFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? editing,
    TResult Function(UserEntity user)? editSuccess,
    TResult Function(String errorMsg)? editFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Editing value) editing,
    required TResult Function(_EditSuccess value) editSuccess,
    required TResult Function(_EditFailure value) editFailure,
  }) {
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Editing value)? editing,
    TResult? Function(_EditSuccess value)? editSuccess,
    TResult? Function(_EditFailure value)? editFailure,
  }) {
    return editFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Editing value)? editing,
    TResult Function(_EditSuccess value)? editSuccess,
    TResult Function(_EditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class _EditFailure implements EditSubcategoryState {
  const factory _EditFailure(final String errorMsg) = _$EditFailureImpl;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$EditFailureImplCopyWith<_$EditFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
