part of 'edit_email_bloc.dart';

@freezed
class EditEmailState with _$EditEmailState {
  const factory EditEmailState.initial() = _Initial;

  const factory EditEmailState.editing() = _Editing;
  const factory EditEmailState.editSuccess(UserEntity user) = _EditSuccess;
  const factory EditEmailState.editError(String message) = _EditError;
}
