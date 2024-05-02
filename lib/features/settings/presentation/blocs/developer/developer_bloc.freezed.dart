// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'developer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeveloperEvent {
  bool get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleDeveloperMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleDeveloperMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleDeveloperMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleDeveloperMode value) toggleDeveloperMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleDeveloperMode value)? toggleDeveloperMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleDeveloperMode value)? toggleDeveloperMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeveloperEventCopyWith<DeveloperEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperEventCopyWith<$Res> {
  factory $DeveloperEventCopyWith(
          DeveloperEvent value, $Res Function(DeveloperEvent) then) =
      _$DeveloperEventCopyWithImpl<$Res, DeveloperEvent>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$DeveloperEventCopyWithImpl<$Res, $Val extends DeveloperEvent>
    implements $DeveloperEventCopyWith<$Res> {
  _$DeveloperEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleDeveloperModeImplCopyWith<$Res>
    implements $DeveloperEventCopyWith<$Res> {
  factory _$$ToggleDeveloperModeImplCopyWith(_$ToggleDeveloperModeImpl value,
          $Res Function(_$ToggleDeveloperModeImpl) then) =
      __$$ToggleDeveloperModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ToggleDeveloperModeImplCopyWithImpl<$Res>
    extends _$DeveloperEventCopyWithImpl<$Res, _$ToggleDeveloperModeImpl>
    implements _$$ToggleDeveloperModeImplCopyWith<$Res> {
  __$$ToggleDeveloperModeImplCopyWithImpl(_$ToggleDeveloperModeImpl _value,
      $Res Function(_$ToggleDeveloperModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ToggleDeveloperModeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleDeveloperModeImpl implements _ToggleDeveloperMode {
  const _$ToggleDeveloperModeImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'DeveloperEvent.toggleDeveloperMode(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleDeveloperModeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleDeveloperModeImplCopyWith<_$ToggleDeveloperModeImpl> get copyWith =>
      __$$ToggleDeveloperModeImplCopyWithImpl<_$ToggleDeveloperModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleDeveloperMode,
  }) {
    return toggleDeveloperMode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleDeveloperMode,
  }) {
    return toggleDeveloperMode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleDeveloperMode,
    required TResult orElse(),
  }) {
    if (toggleDeveloperMode != null) {
      return toggleDeveloperMode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleDeveloperMode value) toggleDeveloperMode,
  }) {
    return toggleDeveloperMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleDeveloperMode value)? toggleDeveloperMode,
  }) {
    return toggleDeveloperMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleDeveloperMode value)? toggleDeveloperMode,
    required TResult orElse(),
  }) {
    if (toggleDeveloperMode != null) {
      return toggleDeveloperMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleDeveloperMode implements DeveloperEvent {
  const factory _ToggleDeveloperMode({required final bool value}) =
      _$ToggleDeveloperModeImpl;

  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$ToggleDeveloperModeImplCopyWith<_$ToggleDeveloperModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeveloperState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DeveloperMode mode) developerModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DeveloperMode mode)? developerModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DeveloperMode mode)? developerModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeveloperModeChanged value) developerModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeveloperModeChanged value)? developerModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeveloperModeChanged value)? developerModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperStateCopyWith<$Res> {
  factory $DeveloperStateCopyWith(
          DeveloperState value, $Res Function(DeveloperState) then) =
      _$DeveloperStateCopyWithImpl<$Res, DeveloperState>;
}

/// @nodoc
class _$DeveloperStateCopyWithImpl<$Res, $Val extends DeveloperState>
    implements $DeveloperStateCopyWith<$Res> {
  _$DeveloperStateCopyWithImpl(this._value, this._then);

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
    extends _$DeveloperStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DeveloperState.initial()';
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
    required TResult Function(DeveloperMode mode) developerModeChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DeveloperMode mode)? developerModeChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DeveloperMode mode)? developerModeChanged,
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
    required TResult Function(_DeveloperModeChanged value) developerModeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeveloperModeChanged value)? developerModeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeveloperModeChanged value)? developerModeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeveloperState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeveloperModeChangedImplCopyWith<$Res> {
  factory _$$DeveloperModeChangedImplCopyWith(_$DeveloperModeChangedImpl value,
          $Res Function(_$DeveloperModeChangedImpl) then) =
      __$$DeveloperModeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeveloperMode mode});
}

/// @nodoc
class __$$DeveloperModeChangedImplCopyWithImpl<$Res>
    extends _$DeveloperStateCopyWithImpl<$Res, _$DeveloperModeChangedImpl>
    implements _$$DeveloperModeChangedImplCopyWith<$Res> {
  __$$DeveloperModeChangedImplCopyWithImpl(_$DeveloperModeChangedImpl _value,
      $Res Function(_$DeveloperModeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$DeveloperModeChangedImpl(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DeveloperMode,
    ));
  }
}

/// @nodoc

class _$DeveloperModeChangedImpl implements _DeveloperModeChanged {
  const _$DeveloperModeChangedImpl(this.mode);

  @override
  final DeveloperMode mode;

  @override
  String toString() {
    return 'DeveloperState.developerModeChanged(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperModeChangedImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperModeChangedImplCopyWith<_$DeveloperModeChangedImpl>
      get copyWith =>
          __$$DeveloperModeChangedImplCopyWithImpl<_$DeveloperModeChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DeveloperMode mode) developerModeChanged,
  }) {
    return developerModeChanged(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DeveloperMode mode)? developerModeChanged,
  }) {
    return developerModeChanged?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DeveloperMode mode)? developerModeChanged,
    required TResult orElse(),
  }) {
    if (developerModeChanged != null) {
      return developerModeChanged(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeveloperModeChanged value) developerModeChanged,
  }) {
    return developerModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeveloperModeChanged value)? developerModeChanged,
  }) {
    return developerModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeveloperModeChanged value)? developerModeChanged,
    required TResult orElse(),
  }) {
    if (developerModeChanged != null) {
      return developerModeChanged(this);
    }
    return orElse();
  }
}

abstract class _DeveloperModeChanged implements DeveloperState {
  const factory _DeveloperModeChanged(final DeveloperMode mode) =
      _$DeveloperModeChangedImpl;

  DeveloperMode get mode;
  @JsonKey(ignore: true)
  _$$DeveloperModeChangedImplCopyWith<_$DeveloperModeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
