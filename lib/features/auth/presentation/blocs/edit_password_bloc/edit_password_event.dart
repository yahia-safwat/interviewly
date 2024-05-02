part of 'edit_password_bloc.dart';

@freezed
class EditPasswordEvent with _$EditPasswordEvent {
  const factory EditPasswordEvent.started() = _Started;
  const factory EditPasswordEvent.changePassword(
    UserEntity userEntity,
    String currentPassword,
    String newPassword,
  ) = _ChangePassword;
}
