part of 'edit_user_bloc.dart';

@freezed
class EditUserEvent with _$EditUserEvent {
  const factory EditUserEvent.started() = _Started;
  const factory EditUserEvent.editUser({required UserEntity user}) = _EditUser;
}
