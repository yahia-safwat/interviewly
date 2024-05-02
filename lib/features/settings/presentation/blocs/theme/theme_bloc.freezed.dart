// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  bool get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleTheme value) toggleThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleTheme value)? toggleThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleTheme value)? toggleThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

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
abstract class _$$ToggleThemeImplCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory _$$ToggleThemeImplCopyWith(
          _$ToggleThemeImpl value, $Res Function(_$ToggleThemeImpl) then) =
      __$$ToggleThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$ToggleThemeImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ToggleThemeImpl>
    implements _$$ToggleThemeImplCopyWith<$Res> {
  __$$ToggleThemeImplCopyWithImpl(
      _$ToggleThemeImpl _value, $Res Function(_$ToggleThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ToggleThemeImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleThemeImpl implements _ToggleTheme {
  const _$ToggleThemeImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'ThemeEvent.toggleThemeMode(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleThemeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleThemeImplCopyWith<_$ToggleThemeImpl> get copyWith =>
      __$$ToggleThemeImplCopyWithImpl<_$ToggleThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) toggleThemeMode,
  }) {
    return toggleThemeMode(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? toggleThemeMode,
  }) {
    return toggleThemeMode?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? toggleThemeMode,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleTheme value) toggleThemeMode,
  }) {
    return toggleThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleTheme value)? toggleThemeMode,
  }) {
    return toggleThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleTheme value)? toggleThemeMode,
    required TResult orElse(),
  }) {
    if (toggleThemeMode != null) {
      return toggleThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleTheme implements ThemeEvent {
  const factory _ToggleTheme({required final bool value}) = _$ToggleThemeImpl;

  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$ToggleThemeImplCopyWith<_$ToggleThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppThemeMode themeMode) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChanged value) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

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
    extends _$ThemeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ThemeState.initial()';
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
    required TResult Function(AppThemeMode themeMode) themeChanged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppThemeMode themeMode)? themeChanged,
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
    required TResult Function(_ThemeChanged value) themeChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThemeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeChangedImplCopyWith<$Res> {
  factory _$$ThemeChangedImplCopyWith(
          _$ThemeChangedImpl value, $Res Function(_$ThemeChangedImpl) then) =
      __$$ThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppThemeMode themeMode});
}

/// @nodoc
class __$$ThemeChangedImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeChangedImpl>
    implements _$$ThemeChangedImplCopyWith<$Res> {
  __$$ThemeChangedImplCopyWithImpl(
      _$ThemeChangedImpl _value, $Res Function(_$ThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeChangedImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as AppThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeChangedImpl implements _ThemeChanged {
  const _$ThemeChangedImpl(this.themeMode);

  @override
  final AppThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState.themeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      __$$ThemeChangedImplCopyWithImpl<_$ThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppThemeMode themeMode) themeChanged,
  }) {
    return themeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppThemeMode themeMode)? themeChanged,
  }) {
    return themeChanged?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppThemeMode themeMode)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChanged value) themeChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeChanged implements ThemeState {
  const factory _ThemeChanged(final AppThemeMode themeMode) =
      _$ThemeChangedImpl;

  AppThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
