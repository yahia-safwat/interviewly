part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.toggleThemeMode({required bool value}) =
      _ToggleTheme;
}
