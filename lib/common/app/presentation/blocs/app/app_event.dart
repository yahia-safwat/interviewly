part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.startApp() = _StartApp;
// const factory AppEvent.clearPrefs() = _ClearPrefs;

  const factory AppEvent.refreshApp() = _RefreshApp;
}
