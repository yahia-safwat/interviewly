part of 'developer_bloc.dart';

@freezed
class DeveloperEvent with _$DeveloperEvent {
  const factory DeveloperEvent.toggleDeveloperMode({required bool value}) =
      _ToggleDeveloperMode;
}
