import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/fetch_prefs_data_usecase.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final FetchPrefsDataUsecase fetchPrefsDataUsecase;

  late bool isFirstTime;
  late bool isDarkMode;
  late bool isDeveloperMode;

  AppBloc({required this.fetchPrefsDataUsecase}) : super(const _Initial()) {
    on<_StartApp>(_onStartApp);
    on<_RefreshApp>(_onRefreshApp);
  }

// Event handler for AppStarted event
  FutureOr<void> _onStartApp(
    _StartApp event,
    Emitter<AppState> emit,
  ) async {
    // Fetch prefs data from local storage
    final result = await fetchPrefsDataUsecase();
    result.fold(
      (failure) => emit(_PrefsDataFetchError(failure.message)),
      (prefsData) {
        // Update state based on prefs data
        _updatePrefsData(prefsData);

        // Emit the fetched prefs data
        emit(_AppStarted(prefsData));
      },
    );
  }

  // Event handler for RefreshApp event
  FutureOr<void> _onRefreshApp(
      _RefreshApp event, Emitter<AppState> emit) async {
    // Fetch prefs data from local storage
    final result = await fetchPrefsDataUsecase();
    result.fold(
      (failure) => emit(_PrefsDataFetchError(failure.message)),
      (prefsData) {
        // update state based on prefs data
        _updatePrefsData(prefsData);

        // Emit the updated prefs data
        emit(_AppRefreshed(prefsData));
      },
    );
  }

  void _updatePrefsData(Map<String, dynamic> prefsData) {
    isFirstTime = prefsData['isFirstTime'];
    isDarkMode = prefsData['isDarkMode'];
    isDeveloperMode = prefsData['isDeveloperMode'];
  }
}
