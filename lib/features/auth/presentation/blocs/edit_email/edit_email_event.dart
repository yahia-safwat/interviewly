part of 'edit_email_bloc.dart';

@freezed
class EditEmailEvent with _$EditEmailEvent {
  const factory EditEmailEvent.started() = _Started;

  const factory EditEmailEvent.editEmail(UserEntity user, String newEmail) =
      _EditEmail;
}
