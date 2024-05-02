part of 'theme_bloc.dart';

enum AppThemeMode { light, dark, system }

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.themeChanged(AppThemeMode themeMode) = _ThemeChanged;
}
