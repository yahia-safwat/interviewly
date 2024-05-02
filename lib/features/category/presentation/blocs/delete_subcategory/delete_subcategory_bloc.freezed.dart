// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_subcategory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteSubcategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            UserEntity user, SubcategoryEntity subCategoryEntity)
        deleteSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        deleteSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        deleteSubcategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteSubcategory value) deleteSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteSubcategory value)? deleteSubcategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteSubcategory value)? deleteSubcategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSubcategoryEventCopyWith<$Res> {
  factory $DeleteSubcategoryEventCopyWith(DeleteSubcategoryEvent value,
          $Res Function(DeleteSubcategoryEvent) then) =
      _$DeleteSubcategoryEventCopyWithImpl<$Res, DeleteSubcategoryEvent>;
}

/// @nodoc
class _$DeleteSubcategoryEventCopyWithImpl<$Res,
        $Val extends DeleteSubcategoryEvent>
    implements $DeleteSubcategoryEventCopyWith<$Res> {
  _$DeleteSubcategoryEventCopyWithImpl(this._value, this._then);

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
    extends _$DeleteSubcategoryEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'DeleteSubcategoryEvent.started()';
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
        deleteSubcategory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        deleteSubcategory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        deleteSubcategory,
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
    required TResult Function(_DeleteSubcategory value) deleteSubcategory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteSubcategory value)? deleteSubcategory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteSubcategory value)? deleteSubcategory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DeleteSubcategoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DeleteSubcategoryImplCopyWith<$Res> {
  factory _$$DeleteSubcategoryImplCopyWith(_$DeleteSubcategoryImpl value,
          $Res Function(_$DeleteSubcategoryImpl) then) =
      __$$DeleteSubcategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user, SubcategoryEntity subCategoryEntity});
}

/// @nodoc
class __$$DeleteSubcategoryImplCopyWithImpl<$Res>
    extends _$DeleteSubcategoryEventCopyWithImpl<$Res, _$DeleteSubcategoryImpl>
    implements _$$DeleteSubcategoryImplCopyWith<$Res> {
  __$$DeleteSubcategoryImplCopyWithImpl(_$DeleteSubcategoryImpl _value,
      $Res Function(_$DeleteSubcategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? subCategoryEntity = null,
  }) {
    return _then(_$DeleteSubcategoryImpl(
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

class _$DeleteSubcategoryImpl implements _DeleteSubcategory {
  const _$DeleteSubcategoryImpl(this.user, this.subCategoryEntity);

  @override
  final UserEntity user;
  @override
  final SubcategoryEntity subCategoryEntity;

  @override
  String toString() {
    return 'DeleteSubcategoryEvent.deleteSubcategory(user: $user, subCategoryEntity: $subCategoryEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubcategoryImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.subCategoryEntity, subCategoryEntity) ||
                other.subCategoryEntity == subCategoryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, subCategoryEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubcategoryImplCopyWith<_$DeleteSubcategoryImpl> get copyWith =>
      __$$DeleteSubcategoryImplCopyWithImpl<_$DeleteSubcategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            UserEntity user, SubcategoryEntity subCategoryEntity)
        deleteSubcategory,
  }) {
    return deleteSubcategory(user, subCategoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        deleteSubcategory,
  }) {
    return deleteSubcategory?.call(user, subCategoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity user, SubcategoryEntity subCategoryEntity)?
        deleteSubcategory,
    required TResult orElse(),
  }) {
    if (deleteSubcategory != null) {
      return deleteSubcategory(user, subCategoryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteSubcategory value) deleteSubcategory,
  }) {
    return deleteSubcategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteSubcategory value)? deleteSubcategory,
  }) {
    return deleteSubcategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteSubcategory value)? deleteSubcategory,
    required TResult orElse(),
  }) {
    if (deleteSubcategory != null) {
      return deleteSubcategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteSubcategory implements DeleteSubcategoryEvent {
  const factory _DeleteSubcategory(
          final UserEntity user, final SubcategoryEntity subCategoryEntity) =
      _$DeleteSubcategoryImpl;

  UserEntity get user;
  SubcategoryEntity get subCategoryEntity;
  @JsonKey(ignore: true)
  _$$DeleteSubcategoryImplCopyWith<_$DeleteSubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteSubcategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(UserEntity user) deleteSuccess,
    required TResult Function(String errorMsg) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleting,
    TResult? Function(UserEntity user)? deleteSuccess,
    TResult? Function(String errorMsg)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(UserEntity user)? deleteSuccess,
    TResult Function(String errorMsg)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSubcategoryStateCopyWith<$Res> {
  factory $DeleteSubcategoryStateCopyWith(DeleteSubcategoryState value,
          $Res Function(DeleteSubcategoryState) then) =
      _$DeleteSubcategoryStateCopyWithImpl<$Res, DeleteSubcategoryState>;
}

/// @nodoc
class _$DeleteSubcategoryStateCopyWithImpl<$Res,
        $Val extends DeleteSubcategoryState>
    implements $DeleteSubcategoryStateCopyWith<$Res> {
  _$DeleteSubcategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$DeleteSubcategoryStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DeleteSubcategoryState.initial()';
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
    required TResult Function() deleting,
    required TResult Function(UserEntity user) deleteSuccess,
    required TResult Function(String errorMsg) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleting,
    TResult? Function(UserEntity user)? deleteSuccess,
    TResult? Function(String errorMsg)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(UserEntity user)? deleteSuccess,
    TResult Function(String errorMsg)? deleteFailure,
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
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteSubcategoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeletingImplCopyWith<$Res> {
  factory _$$DeletingImplCopyWith(
          _$DeletingImpl value, $Res Function(_$DeletingImpl) then) =
      __$$DeletingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletingImplCopyWithImpl<$Res>
    extends _$DeleteSubcategoryStateCopyWithImpl<$Res, _$DeletingImpl>
    implements _$$DeletingImplCopyWith<$Res> {
  __$$DeletingImplCopyWithImpl(
      _$DeletingImpl _value, $Res Function(_$DeletingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletingImpl implements _Deleting {
  const _$DeletingImpl();

  @override
  String toString() {
    return 'DeleteSubcategoryState.deleting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(UserEntity user) deleteSuccess,
    required TResult Function(String errorMsg) deleteFailure,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleting,
    TResult? Function(UserEntity user)? deleteSuccess,
    TResult? Function(String errorMsg)? deleteFailure,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(UserEntity user)? deleteSuccess,
    TResult Function(String errorMsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements DeleteSubcategoryState {
  const factory _Deleting() = _$DeletingImpl;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$DeleteSubcategoryStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$DeleteSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl(this.user);

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'DeleteSubcategoryState.deleteSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      __$$DeleteSuccessImplCopyWithImpl<_$DeleteSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(UserEntity user) deleteSuccess,
    required TResult Function(String errorMsg) deleteFailure,
  }) {
    return deleteSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleting,
    TResult? Function(UserEntity user)? deleteSuccess,
    TResult? Function(String errorMsg)? deleteFailure,
  }) {
    return deleteSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(UserEntity user)? deleteSuccess,
    TResult Function(String errorMsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements DeleteSubcategoryState {
  const factory _DeleteSuccess(final UserEntity user) = _$DeleteSuccessImpl;

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$DeleteSubcategoryStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'DeleteSubcategoryState.deleteFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      __$$DeleteFailureImplCopyWithImpl<_$DeleteFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleting,
    required TResult Function(UserEntity user) deleteSuccess,
    required TResult Function(String errorMsg) deleteFailure,
  }) {
    return deleteFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleting,
    TResult? Function(UserEntity user)? deleteSuccess,
    TResult? Function(String errorMsg)? deleteFailure,
  }) {
    return deleteFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleting,
    TResult Function(UserEntity user)? deleteSuccess,
    TResult Function(String errorMsg)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements DeleteSubcategoryState {
  const factory _DeleteFailure(final String errorMsg) = _$DeleteFailureImpl;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
