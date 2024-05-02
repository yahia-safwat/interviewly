part of 'developer_bloc.dart';

enum DeveloperMode { on, off }

@freezed
class DeveloperState with _$DeveloperState {
  const factory DeveloperState.initial() = _Initial;

  const factory DeveloperState.developerModeChanged(DeveloperMode mode) =
      _DeveloperModeChanged;
}
