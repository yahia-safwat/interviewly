// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function() refreshApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function()? refreshApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function()? refreshApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_RefreshApp value) refreshApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_RefreshApp value)? refreshApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_RefreshApp value)? refreshApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartAppImplCopyWith<$Res> {
  factory _$$StartAppImplCopyWith(
          _$StartAppImpl value, $Res Function(_$StartAppImpl) then) =
      __$$StartAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAppImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$StartAppImpl>
    implements _$$StartAppImplCopyWith<$Res> {
  __$$StartAppImplCopyWithImpl(
      _$StartAppImpl _value, $Res Function(_$StartAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartAppImpl implements _StartApp {
  const _$StartAppImpl();

  @override
  String toString() {
    return 'AppEvent.startApp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function() refreshApp,
  }) {
    return startApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function()? refreshApp,
  }) {
    return startApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function()? refreshApp,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_RefreshApp value) refreshApp,
  }) {
    return startApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_RefreshApp value)? refreshApp,
  }) {
    return startApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_RefreshApp value)? refreshApp,
    required TResult orElse(),
  }) {
    if (startApp != null) {
      return startApp(this);
    }
    return orElse();
  }
}

abstract class _StartApp implements AppEvent {
  const factory _StartApp() = _$StartAppImpl;
}

/// @nodoc
abstract class _$$RefreshAppImplCopyWith<$Res> {
  factory _$$RefreshAppImplCopyWith(
          _$RefreshAppImpl value, $Res Function(_$RefreshAppImpl) then) =
      __$$RefreshAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshAppImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$RefreshAppImpl>
    implements _$$RefreshAppImplCopyWith<$Res> {
  __$$RefreshAppImplCopyWithImpl(
      _$RefreshAppImpl _value, $Res Function(_$RefreshAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshAppImpl implements _RefreshApp {
  const _$RefreshAppImpl();

  @override
  String toString() {
    return 'AppEvent.refreshApp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startApp,
    required TResult Function() refreshApp,
  }) {
    return refreshApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startApp,
    TResult? Function()? refreshApp,
  }) {
    return refreshApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startApp,
    TResult Function()? refreshApp,
    required TResult orElse(),
  }) {
    if (refreshApp != null) {
      return refreshApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartApp value) startApp,
    required TResult Function(_RefreshApp value) refreshApp,
  }) {
    return refreshApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartApp value)? startApp,
    TResult? Function(_RefreshApp value)? refreshApp,
  }) {
    return refreshApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartApp value)? startApp,
    TResult Function(_RefreshApp value)? refreshApp,
    required TResult orElse(),
  }) {
    if (refreshApp != null) {
      return refreshApp(this);
    }
    return orElse();
  }
}

abstract class _RefreshApp implements AppEvent {
  const factory _RefreshApp() = _$RefreshAppImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() prefsDataFetching,
    required TResult Function(String errorMessage) prefsDataFetchError,
    required TResult Function(Map<String, dynamic> prefsData) appStarted,
    required TResult Function(Map<String, dynamic> prefsData) appRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? prefsDataFetching,
    TResult? Function(String errorMessage)? prefsDataFetchError,
    TResult? Function(Map<String, dynamic> prefsData)? appStarted,
    TResult? Function(Map<String, dynamic> prefsData)? appRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? prefsDataFetching,
    TResult Function(String errorMessage)? prefsDataFetchError,
    TResult Function(Map<String, dynamic> prefsData)? appStarted,
    TResult Function(Map<String, dynamic> prefsData)? appRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PrefsDataFetching value) prefsDataFetching,
    required TResult Function(_PrefsDataFetchError value) prefsDataFetchError,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_AppRefreshed value) appRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult? Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_AppRefreshed value)? appRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_AppRefreshed value)? appRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

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
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AppState.initial()';
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
    required TResult Function() prefsDataFetching,
    required TResult Function(String errorMessage) prefsDataFetchError,
    required TResult Function(Map<String, dynamic> prefsData) appStarted,
    required TResult Function(Map<String, dynamic> prefsData) appRefreshed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? prefsDataFetching,
    TResult? Function(String errorMessage)? prefsDataFetchError,
    TResult? Function(Map<String, dynamic> prefsData)? appStarted,
    TResult? Function(Map<String, dynamic> prefsData)? appRefreshed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? prefsDataFetching,
    TResult Function(String errorMessage)? prefsDataFetchError,
    TResult Function(Map<String, dynamic> prefsData)? appStarted,
    TResult Function(Map<String, dynamic> prefsData)? appRefreshed,
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
    required TResult Function(_PrefsDataFetching value) prefsDataFetching,
    required TResult Function(_PrefsDataFetchError value) prefsDataFetchError,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_AppRefreshed value) appRefreshed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult? Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_AppRefreshed value)? appRefreshed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_AppRefreshed value)? appRefreshed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PrefsDataFetchingImplCopyWith<$Res> {
  factory _$$PrefsDataFetchingImplCopyWith(_$PrefsDataFetchingImpl value,
          $Res Function(_$PrefsDataFetchingImpl) then) =
      __$$PrefsDataFetchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrefsDataFetchingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$PrefsDataFetchingImpl>
    implements _$$PrefsDataFetchingImplCopyWith<$Res> {
  __$$PrefsDataFetchingImplCopyWithImpl(_$PrefsDataFetchingImpl _value,
      $Res Function(_$PrefsDataFetchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PrefsDataFetchingImpl implements _PrefsDataFetching {
  const _$PrefsDataFetchingImpl();

  @override
  String toString() {
    return 'AppState.prefsDataFetching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrefsDataFetchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() prefsDataFetching,
    required TResult Function(String errorMessage) prefsDataFetchError,
    required TResult Function(Map<String, dynamic> prefsData) appStarted,
    required TResult Function(Map<String, dynamic> prefsData) appRefreshed,
  }) {
    return prefsDataFetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? prefsDataFetching,
    TResult? Function(String errorMessage)? prefsDataFetchError,
    TResult? Function(Map<String, dynamic> prefsData)? appStarted,
    TResult? Function(Map<String, dynamic> prefsData)? appRefreshed,
  }) {
    return prefsDataFetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? prefsDataFetching,
    TResult Function(String errorMessage)? prefsDataFetchError,
    TResult Function(Map<String, dynamic> prefsData)? appStarted,
    TResult Function(Map<String, dynamic> prefsData)? appRefreshed,
    required TResult orElse(),
  }) {
    if (prefsDataFetching != null) {
      return prefsDataFetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PrefsDataFetching value) prefsDataFetching,
    required TResult Function(_PrefsDataFetchError value) prefsDataFetchError,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_AppRefreshed value) appRefreshed,
  }) {
    return prefsDataFetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult? Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_AppRefreshed value)? appRefreshed,
  }) {
    return prefsDataFetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_AppRefreshed value)? appRefreshed,
    required TResult orElse(),
  }) {
    if (prefsDataFetching != null) {
      return prefsDataFetching(this);
    }
    return orElse();
  }
}

abstract class _PrefsDataFetching implements AppState {
  const factory _PrefsDataFetching() = _$PrefsDataFetchingImpl;
}

/// @nodoc
abstract class _$$PrefsDataFetchErrorImplCopyWith<$Res> {
  factory _$$PrefsDataFetchErrorImplCopyWith(_$PrefsDataFetchErrorImpl value,
          $Res Function(_$PrefsDataFetchErrorImpl) then) =
      __$$PrefsDataFetchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PrefsDataFetchErrorImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$PrefsDataFetchErrorImpl>
    implements _$$PrefsDataFetchErrorImplCopyWith<$Res> {
  __$$PrefsDataFetchErrorImplCopyWithImpl(_$PrefsDataFetchErrorImpl _value,
      $Res Function(_$PrefsDataFetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PrefsDataFetchErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PrefsDataFetchErrorImpl implements _PrefsDataFetchError {
  const _$PrefsDataFetchErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AppState.prefsDataFetchError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrefsDataFetchErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrefsDataFetchErrorImplCopyWith<_$PrefsDataFetchErrorImpl> get copyWith =>
      __$$PrefsDataFetchErrorImplCopyWithImpl<_$PrefsDataFetchErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() prefsDataFetching,
    required TResult Function(String errorMessage) prefsDataFetchError,
    required TResult Function(Map<String, dynamic> prefsData) appStarted,
    required TResult Function(Map<String, dynamic> prefsData) appRefreshed,
  }) {
    return prefsDataFetchError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? prefsDataFetching,
    TResult? Function(String errorMessage)? prefsDataFetchError,
    TResult? Function(Map<String, dynamic> prefsData)? appStarted,
    TResult? Function(Map<String, dynamic> prefsData)? appRefreshed,
  }) {
    return prefsDataFetchError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? prefsDataFetching,
    TResult Function(String errorMessage)? prefsDataFetchError,
    TResult Function(Map<String, dynamic> prefsData)? appStarted,
    TResult Function(Map<String, dynamic> prefsData)? appRefreshed,
    required TResult orElse(),
  }) {
    if (prefsDataFetchError != null) {
      return prefsDataFetchError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PrefsDataFetching value) prefsDataFetching,
    required TResult Function(_PrefsDataFetchError value) prefsDataFetchError,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_AppRefreshed value) appRefreshed,
  }) {
    return prefsDataFetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult? Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_AppRefreshed value)? appRefreshed,
  }) {
    return prefsDataFetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_AppRefreshed value)? appRefreshed,
    required TResult orElse(),
  }) {
    if (prefsDataFetchError != null) {
      return prefsDataFetchError(this);
    }
    return orElse();
  }
}

abstract class _PrefsDataFetchError implements AppState {
  const factory _PrefsDataFetchError(final String errorMessage) =
      _$PrefsDataFetchErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$PrefsDataFetchErrorImplCopyWith<_$PrefsDataFetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStartedImplCopyWith<$Res> {
  factory _$$AppStartedImplCopyWith(
          _$AppStartedImpl value, $Res Function(_$AppStartedImpl) then) =
      __$$AppStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> prefsData});
}

/// @nodoc
class __$$AppStartedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStartedImpl>
    implements _$$AppStartedImplCopyWith<$Res> {
  __$$AppStartedImplCopyWithImpl(
      _$AppStartedImpl _value, $Res Function(_$AppStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefsData = null,
  }) {
    return _then(_$AppStartedImpl(
      null == prefsData
          ? _value._prefsData
          : prefsData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AppStartedImpl implements _AppStarted {
  const _$AppStartedImpl(final Map<String, dynamic> prefsData)
      : _prefsData = prefsData;

  final Map<String, dynamic> _prefsData;
  @override
  Map<String, dynamic> get prefsData {
    if (_prefsData is EqualUnmodifiableMapView) return _prefsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prefsData);
  }

  @override
  String toString() {
    return 'AppState.appStarted(prefsData: $prefsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStartedImpl &&
            const DeepCollectionEquality()
                .equals(other._prefsData, _prefsData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prefsData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStartedImplCopyWith<_$AppStartedImpl> get copyWith =>
      __$$AppStartedImplCopyWithImpl<_$AppStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() prefsDataFetching,
    required TResult Function(String errorMessage) prefsDataFetchError,
    required TResult Function(Map<String, dynamic> prefsData) appStarted,
    required TResult Function(Map<String, dynamic> prefsData) appRefreshed,
  }) {
    return appStarted(prefsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? prefsDataFetching,
    TResult? Function(String errorMessage)? prefsDataFetchError,
    TResult? Function(Map<String, dynamic> prefsData)? appStarted,
    TResult? Function(Map<String, dynamic> prefsData)? appRefreshed,
  }) {
    return appStarted?.call(prefsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? prefsDataFetching,
    TResult Function(String errorMessage)? prefsDataFetchError,
    TResult Function(Map<String, dynamic> prefsData)? appStarted,
    TResult Function(Map<String, dynamic> prefsData)? appRefreshed,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(prefsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PrefsDataFetching value) prefsDataFetching,
    required TResult Function(_PrefsDataFetchError value) prefsDataFetchError,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_AppRefreshed value) appRefreshed,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult? Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_AppRefreshed value)? appRefreshed,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_AppRefreshed value)? appRefreshed,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AppStarted implements AppState {
  const factory _AppStarted(final Map<String, dynamic> prefsData) =
      _$AppStartedImpl;

  Map<String, dynamic> get prefsData;
  @JsonKey(ignore: true)
  _$$AppStartedImplCopyWith<_$AppStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppRefreshedImplCopyWith<$Res> {
  factory _$$AppRefreshedImplCopyWith(
          _$AppRefreshedImpl value, $Res Function(_$AppRefreshedImpl) then) =
      __$$AppRefreshedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> prefsData});
}

/// @nodoc
class __$$AppRefreshedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppRefreshedImpl>
    implements _$$AppRefreshedImplCopyWith<$Res> {
  __$$AppRefreshedImplCopyWithImpl(
      _$AppRefreshedImpl _value, $Res Function(_$AppRefreshedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefsData = null,
  }) {
    return _then(_$AppRefreshedImpl(
      null == prefsData
          ? _value._prefsData
          : prefsData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AppRefreshedImpl implements _AppRefreshed {
  const _$AppRefreshedImpl(final Map<String, dynamic> prefsData)
      : _prefsData = prefsData;

  final Map<String, dynamic> _prefsData;
  @override
  Map<String, dynamic> get prefsData {
    if (_prefsData is EqualUnmodifiableMapView) return _prefsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prefsData);
  }

  @override
  String toString() {
    return 'AppState.appRefreshed(prefsData: $prefsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppRefreshedImpl &&
            const DeepCollectionEquality()
                .equals(other._prefsData, _prefsData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prefsData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppRefreshedImplCopyWith<_$AppRefreshedImpl> get copyWith =>
      __$$AppRefreshedImplCopyWithImpl<_$AppRefreshedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() prefsDataFetching,
    required TResult Function(String errorMessage) prefsDataFetchError,
    required TResult Function(Map<String, dynamic> prefsData) appStarted,
    required TResult Function(Map<String, dynamic> prefsData) appRefreshed,
  }) {
    return appRefreshed(prefsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? prefsDataFetching,
    TResult? Function(String errorMessage)? prefsDataFetchError,
    TResult? Function(Map<String, dynamic> prefsData)? appStarted,
    TResult? Function(Map<String, dynamic> prefsData)? appRefreshed,
  }) {
    return appRefreshed?.call(prefsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? prefsDataFetching,
    TResult Function(String errorMessage)? prefsDataFetchError,
    TResult Function(Map<String, dynamic> prefsData)? appStarted,
    TResult Function(Map<String, dynamic> prefsData)? appRefreshed,
    required TResult orElse(),
  }) {
    if (appRefreshed != null) {
      return appRefreshed(prefsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PrefsDataFetching value) prefsDataFetching,
    required TResult Function(_PrefsDataFetchError value) prefsDataFetchError,
    required TResult Function(_AppStarted value) appStarted,
    required TResult Function(_AppRefreshed value) appRefreshed,
  }) {
    return appRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult? Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult? Function(_AppStarted value)? appStarted,
    TResult? Function(_AppRefreshed value)? appRefreshed,
  }) {
    return appRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PrefsDataFetching value)? prefsDataFetching,
    TResult Function(_PrefsDataFetchError value)? prefsDataFetchError,
    TResult Function(_AppStarted value)? appStarted,
    TResult Function(_AppRefreshed value)? appRefreshed,
    required TResult orElse(),
  }) {
    if (appRefreshed != null) {
      return appRefreshed(this);
    }
    return orElse();
  }
}

abstract class _AppRefreshed implements AppState {
  const factory _AppRefreshed(final Map<String, dynamic> prefsData) =
      _$AppRefreshedImpl;

  Map<String, dynamic> get prefsData;
  @JsonKey(ignore: true)
  _$$AppRefreshedImplCopyWith<_$AppRefreshedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
