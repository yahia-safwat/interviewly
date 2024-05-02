import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/toggle_theme_mode.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ToggleThemeModeUseCase toggleThemeModeUseCase;

  ThemeBloc({required this.toggleThemeModeUseCase}) : super(const _Initial()) {
    on<_ToggleTheme>(_onToggleTheme);
  }

  Future<FutureOr<void>> _onToggleTheme(
      _ToggleTheme event, Emitter<ThemeState> emit) async {
    // Call the use case to toggle the theme
    final result = await toggleThemeModeUseCase(event.value);
    result.fold(
      (failure) {
        // If there's a failure, revert to the system theme (fallback)
        emit(const ThemeState.themeChanged(AppThemeMode.system));
      },
      (success) {
        // If success, toggle the theme mode and update the state
        final isDarkMode = event.value;

        // Emit the corresponding theme mode
        if (isDarkMode) {
          emit(const ThemeState.themeChanged(AppThemeMode.dark));
        } else {
          emit(const ThemeState.themeChanged(AppThemeMode.light));
        }
      },
    );
  }
}
