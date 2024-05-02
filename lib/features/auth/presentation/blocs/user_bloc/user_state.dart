part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;

  // Define the setting states
  const factory UserState.setting() = _Setting;
  const factory UserState.setSuccess(UserEntity? user) = _SetSuccess;
  const factory UserState.setError(String errorMessage) = _SetError;

  // Define the updating states
  const factory UserState.updating() = _Updating;
  const factory UserState.updateSuccess(UserEntity? user) = _UpdateSuccess;
  const factory UserState.updateError(String errorMessage) = _UpdateError;
}
