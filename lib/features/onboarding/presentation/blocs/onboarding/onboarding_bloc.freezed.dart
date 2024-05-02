// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) increasePage,
    required TResult Function(bool isFirstTime) completeOnboarding,
    required TResult Function(bool isFirstTime) skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? increasePage,
    TResult? Function(bool isFirstTime)? completeOnboarding,
    TResult? Function(bool isFirstTime)? skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? increasePage,
    TResult Function(bool isFirstTime)? completeOnboarding,
    TResult Function(bool isFirstTime)? skipOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreasePage value) increasePage,
    required TResult Function(_CompleteOnboarding value) completeOnboarding,
    required TResult Function(_SkipOnboarding value) skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreasePage value)? increasePage,
    TResult? Function(_CompleteOnboarding value)? completeOnboarding,
    TResult? Function(_SkipOnboarding value)? skipOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreasePage value)? increasePage,
    TResult Function(_CompleteOnboarding value)? completeOnboarding,
    TResult Function(_SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IncreasePageImplCopyWith<$Res> {
  factory _$$IncreasePageImplCopyWith(
          _$IncreasePageImpl value, $Res Function(_$IncreasePageImpl) then) =
      __$$IncreasePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$IncreasePageImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$IncreasePageImpl>
    implements _$$IncreasePageImplCopyWith<$Res> {
  __$$IncreasePageImplCopyWithImpl(
      _$IncreasePageImpl _value, $Res Function(_$IncreasePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$IncreasePageImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncreasePageImpl implements _IncreasePage {
  const _$IncreasePageImpl(this.currentPage);

  @override
  final int currentPage;

  @override
  String toString() {
    return 'OnboardingEvent.increasePage(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncreasePageImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncreasePageImplCopyWith<_$IncreasePageImpl> get copyWith =>
      __$$IncreasePageImplCopyWithImpl<_$IncreasePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) increasePage,
    required TResult Function(bool isFirstTime) completeOnboarding,
    required TResult Function(bool isFirstTime) skipOnboarding,
  }) {
    return increasePage(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? increasePage,
    TResult? Function(bool isFirstTime)? completeOnboarding,
    TResult? Function(bool isFirstTime)? skipOnboarding,
  }) {
    return increasePage?.call(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? increasePage,
    TResult Function(bool isFirstTime)? completeOnboarding,
    TResult Function(bool isFirstTime)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (increasePage != null) {
      return increasePage(currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreasePage value) increasePage,
    required TResult Function(_CompleteOnboarding value) completeOnboarding,
    required TResult Function(_SkipOnboarding value) skipOnboarding,
  }) {
    return increasePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreasePage value)? increasePage,
    TResult? Function(_CompleteOnboarding value)? completeOnboarding,
    TResult? Function(_SkipOnboarding value)? skipOnboarding,
  }) {
    return increasePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreasePage value)? increasePage,
    TResult Function(_CompleteOnboarding value)? completeOnboarding,
    TResult Function(_SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (increasePage != null) {
      return increasePage(this);
    }
    return orElse();
  }
}

abstract class _IncreasePage implements OnboardingEvent {
  const factory _IncreasePage(final int currentPage) = _$IncreasePageImpl;

  int get currentPage;
  @JsonKey(ignore: true)
  _$$IncreasePageImplCopyWith<_$IncreasePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteOnboardingImplCopyWith<$Res> {
  factory _$$CompleteOnboardingImplCopyWith(_$CompleteOnboardingImpl value,
          $Res Function(_$CompleteOnboardingImpl) then) =
      __$$CompleteOnboardingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$CompleteOnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$CompleteOnboardingImpl>
    implements _$$CompleteOnboardingImplCopyWith<$Res> {
  __$$CompleteOnboardingImplCopyWithImpl(_$CompleteOnboardingImpl _value,
      $Res Function(_$CompleteOnboardingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$CompleteOnboardingImpl(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompleteOnboardingImpl implements _CompleteOnboarding {
  const _$CompleteOnboardingImpl({required this.isFirstTime});

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'OnboardingEvent.completeOnboarding(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteOnboardingImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteOnboardingImplCopyWith<_$CompleteOnboardingImpl> get copyWith =>
      __$$CompleteOnboardingImplCopyWithImpl<_$CompleteOnboardingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) increasePage,
    required TResult Function(bool isFirstTime) completeOnboarding,
    required TResult Function(bool isFirstTime) skipOnboarding,
  }) {
    return completeOnboarding(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? increasePage,
    TResult? Function(bool isFirstTime)? completeOnboarding,
    TResult? Function(bool isFirstTime)? skipOnboarding,
  }) {
    return completeOnboarding?.call(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? increasePage,
    TResult Function(bool isFirstTime)? completeOnboarding,
    TResult Function(bool isFirstTime)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (completeOnboarding != null) {
      return completeOnboarding(isFirstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreasePage value) increasePage,
    required TResult Function(_CompleteOnboarding value) completeOnboarding,
    required TResult Function(_SkipOnboarding value) skipOnboarding,
  }) {
    return completeOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreasePage value)? increasePage,
    TResult? Function(_CompleteOnboarding value)? completeOnboarding,
    TResult? Function(_SkipOnboarding value)? skipOnboarding,
  }) {
    return completeOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreasePage value)? increasePage,
    TResult Function(_CompleteOnboarding value)? completeOnboarding,
    TResult Function(_SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (completeOnboarding != null) {
      return completeOnboarding(this);
    }
    return orElse();
  }
}

abstract class _CompleteOnboarding implements OnboardingEvent {
  const factory _CompleteOnboarding({required final bool isFirstTime}) =
      _$CompleteOnboardingImpl;

  bool get isFirstTime;
  @JsonKey(ignore: true)
  _$$CompleteOnboardingImplCopyWith<_$CompleteOnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SkipOnboardingImplCopyWith<$Res> {
  factory _$$SkipOnboardingImplCopyWith(_$SkipOnboardingImpl value,
          $Res Function(_$SkipOnboardingImpl) then) =
      __$$SkipOnboardingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$SkipOnboardingImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$SkipOnboardingImpl>
    implements _$$SkipOnboardingImplCopyWith<$Res> {
  __$$SkipOnboardingImplCopyWithImpl(
      _$SkipOnboardingImpl _value, $Res Function(_$SkipOnboardingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$SkipOnboardingImpl(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SkipOnboardingImpl implements _SkipOnboarding {
  const _$SkipOnboardingImpl({required this.isFirstTime});

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'OnboardingEvent.skipOnboarding(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkipOnboardingImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkipOnboardingImplCopyWith<_$SkipOnboardingImpl> get copyWith =>
      __$$SkipOnboardingImplCopyWithImpl<_$SkipOnboardingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) increasePage,
    required TResult Function(bool isFirstTime) completeOnboarding,
    required TResult Function(bool isFirstTime) skipOnboarding,
  }) {
    return skipOnboarding(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? increasePage,
    TResult? Function(bool isFirstTime)? completeOnboarding,
    TResult? Function(bool isFirstTime)? skipOnboarding,
  }) {
    return skipOnboarding?.call(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? increasePage,
    TResult Function(bool isFirstTime)? completeOnboarding,
    TResult Function(bool isFirstTime)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (skipOnboarding != null) {
      return skipOnboarding(isFirstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreasePage value) increasePage,
    required TResult Function(_CompleteOnboarding value) completeOnboarding,
    required TResult Function(_SkipOnboarding value) skipOnboarding,
  }) {
    return skipOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreasePage value)? increasePage,
    TResult? Function(_CompleteOnboarding value)? completeOnboarding,
    TResult? Function(_SkipOnboarding value)? skipOnboarding,
  }) {
    return skipOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreasePage value)? increasePage,
    TResult Function(_CompleteOnboarding value)? completeOnboarding,
    TResult Function(_SkipOnboarding value)? skipOnboarding,
    required TResult orElse(),
  }) {
    if (skipOnboarding != null) {
      return skipOnboarding(this);
    }
    return orElse();
  }
}

abstract class _SkipOnboarding implements OnboardingEvent {
  const factory _SkipOnboarding({required final bool isFirstTime}) =
      _$SkipOnboardingImpl;

  bool get isFirstTime;
  @JsonKey(ignore: true)
  _$$SkipOnboardingImplCopyWith<_$SkipOnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentPage) onBoardingInProgress,
    required TResult Function(bool isFirstTime) onBoardingCompleted,
    required TResult Function(String errMessage) onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentPage)? onBoardingInProgress,
    TResult? Function(bool isFirstTime)? onBoardingCompleted,
    TResult? Function(String errMessage)? onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentPage)? onBoardingInProgress,
    TResult Function(bool isFirstTime)? onBoardingCompleted,
    TResult Function(String errMessage)? onBoardingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnBoardingInProgress value) onBoardingInProgress,
    required TResult Function(_OnBoardingCompleted value) onBoardingCompleted,
    required TResult Function(_OnBoardingError value) onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult? Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult? Function(_OnBoardingError value)? onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult Function(_OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

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
    extends _$OnboardingStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OnboardingState.initial()';
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
    required TResult Function(int currentPage) onBoardingInProgress,
    required TResult Function(bool isFirstTime) onBoardingCompleted,
    required TResult Function(String errMessage) onBoardingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentPage)? onBoardingInProgress,
    TResult? Function(bool isFirstTime)? onBoardingCompleted,
    TResult? Function(String errMessage)? onBoardingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentPage)? onBoardingInProgress,
    TResult Function(bool isFirstTime)? onBoardingCompleted,
    TResult Function(String errMessage)? onBoardingError,
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
    required TResult Function(_OnBoardingInProgress value) onBoardingInProgress,
    required TResult Function(_OnBoardingCompleted value) onBoardingCompleted,
    required TResult Function(_OnBoardingError value) onBoardingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult? Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult? Function(_OnBoardingError value)? onBoardingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult Function(_OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnBoardingInProgressImplCopyWith<$Res> {
  factory _$$OnBoardingInProgressImplCopyWith(_$OnBoardingInProgressImpl value,
          $Res Function(_$OnBoardingInProgressImpl) then) =
      __$$OnBoardingInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$OnBoardingInProgressImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnBoardingInProgressImpl>
    implements _$$OnBoardingInProgressImplCopyWith<$Res> {
  __$$OnBoardingInProgressImplCopyWithImpl(_$OnBoardingInProgressImpl _value,
      $Res Function(_$OnBoardingInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$OnBoardingInProgressImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnBoardingInProgressImpl implements _OnBoardingInProgress {
  const _$OnBoardingInProgressImpl(this.currentPage);

  @override
  final int currentPage;

  @override
  String toString() {
    return 'OnboardingState.onBoardingInProgress(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingInProgressImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingInProgressImplCopyWith<_$OnBoardingInProgressImpl>
      get copyWith =>
          __$$OnBoardingInProgressImplCopyWithImpl<_$OnBoardingInProgressImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentPage) onBoardingInProgress,
    required TResult Function(bool isFirstTime) onBoardingCompleted,
    required TResult Function(String errMessage) onBoardingError,
  }) {
    return onBoardingInProgress(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentPage)? onBoardingInProgress,
    TResult? Function(bool isFirstTime)? onBoardingCompleted,
    TResult? Function(String errMessage)? onBoardingError,
  }) {
    return onBoardingInProgress?.call(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentPage)? onBoardingInProgress,
    TResult Function(bool isFirstTime)? onBoardingCompleted,
    TResult Function(String errMessage)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingInProgress != null) {
      return onBoardingInProgress(currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnBoardingInProgress value) onBoardingInProgress,
    required TResult Function(_OnBoardingCompleted value) onBoardingCompleted,
    required TResult Function(_OnBoardingError value) onBoardingError,
  }) {
    return onBoardingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult? Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult? Function(_OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult Function(_OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingInProgress != null) {
      return onBoardingInProgress(this);
    }
    return orElse();
  }
}

abstract class _OnBoardingInProgress implements OnboardingState {
  const factory _OnBoardingInProgress(final int currentPage) =
      _$OnBoardingInProgressImpl;

  int get currentPage;
  @JsonKey(ignore: true)
  _$$OnBoardingInProgressImplCopyWith<_$OnBoardingInProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBoardingCompletedImplCopyWith<$Res> {
  factory _$$OnBoardingCompletedImplCopyWith(_$OnBoardingCompletedImpl value,
          $Res Function(_$OnBoardingCompletedImpl) then) =
      __$$OnBoardingCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$OnBoardingCompletedImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnBoardingCompletedImpl>
    implements _$$OnBoardingCompletedImplCopyWith<$Res> {
  __$$OnBoardingCompletedImplCopyWithImpl(_$OnBoardingCompletedImpl _value,
      $Res Function(_$OnBoardingCompletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$OnBoardingCompletedImpl(
      null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnBoardingCompletedImpl implements _OnBoardingCompleted {
  const _$OnBoardingCompletedImpl(this.isFirstTime);

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'OnboardingState.onBoardingCompleted(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingCompletedImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingCompletedImplCopyWith<_$OnBoardingCompletedImpl> get copyWith =>
      __$$OnBoardingCompletedImplCopyWithImpl<_$OnBoardingCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentPage) onBoardingInProgress,
    required TResult Function(bool isFirstTime) onBoardingCompleted,
    required TResult Function(String errMessage) onBoardingError,
  }) {
    return onBoardingCompleted(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentPage)? onBoardingInProgress,
    TResult? Function(bool isFirstTime)? onBoardingCompleted,
    TResult? Function(String errMessage)? onBoardingError,
  }) {
    return onBoardingCompleted?.call(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentPage)? onBoardingInProgress,
    TResult Function(bool isFirstTime)? onBoardingCompleted,
    TResult Function(String errMessage)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingCompleted != null) {
      return onBoardingCompleted(isFirstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnBoardingInProgress value) onBoardingInProgress,
    required TResult Function(_OnBoardingCompleted value) onBoardingCompleted,
    required TResult Function(_OnBoardingError value) onBoardingError,
  }) {
    return onBoardingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult? Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult? Function(_OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult Function(_OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingCompleted != null) {
      return onBoardingCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnBoardingCompleted implements OnboardingState {
  const factory _OnBoardingCompleted(final bool isFirstTime) =
      _$OnBoardingCompletedImpl;

  bool get isFirstTime;
  @JsonKey(ignore: true)
  _$$OnBoardingCompletedImplCopyWith<_$OnBoardingCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBoardingErrorImplCopyWith<$Res> {
  factory _$$OnBoardingErrorImplCopyWith(_$OnBoardingErrorImpl value,
          $Res Function(_$OnBoardingErrorImpl) then) =
      __$$OnBoardingErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMessage});
}

/// @nodoc
class __$$OnBoardingErrorImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$OnBoardingErrorImpl>
    implements _$$OnBoardingErrorImplCopyWith<$Res> {
  __$$OnBoardingErrorImplCopyWithImpl(
      _$OnBoardingErrorImpl _value, $Res Function(_$OnBoardingErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMessage = null,
  }) {
    return _then(_$OnBoardingErrorImpl(
      null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnBoardingErrorImpl implements _OnBoardingError {
  const _$OnBoardingErrorImpl(this.errMessage);

  @override
  final String errMessage;

  @override
  String toString() {
    return 'OnboardingState.onBoardingError(errMessage: $errMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingErrorImpl &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingErrorImplCopyWith<_$OnBoardingErrorImpl> get copyWith =>
      __$$OnBoardingErrorImplCopyWithImpl<_$OnBoardingErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int currentPage) onBoardingInProgress,
    required TResult Function(bool isFirstTime) onBoardingCompleted,
    required TResult Function(String errMessage) onBoardingError,
  }) {
    return onBoardingError(errMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int currentPage)? onBoardingInProgress,
    TResult? Function(bool isFirstTime)? onBoardingCompleted,
    TResult? Function(String errMessage)? onBoardingError,
  }) {
    return onBoardingError?.call(errMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int currentPage)? onBoardingInProgress,
    TResult Function(bool isFirstTime)? onBoardingCompleted,
    TResult Function(String errMessage)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingError != null) {
      return onBoardingError(errMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnBoardingInProgress value) onBoardingInProgress,
    required TResult Function(_OnBoardingCompleted value) onBoardingCompleted,
    required TResult Function(_OnBoardingError value) onBoardingError,
  }) {
    return onBoardingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult? Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult? Function(_OnBoardingError value)? onBoardingError,
  }) {
    return onBoardingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnBoardingInProgress value)? onBoardingInProgress,
    TResult Function(_OnBoardingCompleted value)? onBoardingCompleted,
    TResult Function(_OnBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingError != null) {
      return onBoardingError(this);
    }
    return orElse();
  }
}

abstract class _OnBoardingError implements OnboardingState {
  const factory _OnBoardingError(final String errMessage) =
      _$OnBoardingErrorImpl;

  String get errMessage;
  @JsonKey(ignore: true)
  _$$OnBoardingErrorImplCopyWith<_$OnBoardingErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
