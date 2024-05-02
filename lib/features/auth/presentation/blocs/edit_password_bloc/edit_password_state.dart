part of 'edit_password_bloc.dart';

@freezed
class EditPasswordState with _$EditPasswordState {
  const factory EditPasswordState.initial() = _Initial;

  // change password state
  const factory EditPasswordState.editing() = _Editing;
  const factory EditPasswordState.editSuccess() = _EditSuccess;
  const factory EditPasswordState.editError(String errorMessage) = _EditError;
}
