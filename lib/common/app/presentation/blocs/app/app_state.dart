part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;

  // Fetch Prefs Data from Local Storage States
  const factory AppState.prefsDataFetching() = _PrefsDataFetching;
  const factory AppState.prefsDataFetchError(String errorMessage) =
      _PrefsDataFetchError;

  // Start App State
  const factory AppState.appStarted(Map<String, dynamic> prefsData) =
      _AppStarted;

  // Refresh App State
  const factory AppState.appRefreshed(Map<String, dynamic> prefsData) =
      _AppRefreshed;
}
