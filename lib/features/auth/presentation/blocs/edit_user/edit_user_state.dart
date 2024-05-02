part of 'edit_user_bloc.dart';

@freezed
class EditUserState with _$EditUserState {
  const factory EditUserState.initial() = _Initial;
  const factory EditUserState.editing() = _Editing;
  const factory EditUserState.editSuccess(UserEntity user) = _EditSuccess;
  const factory EditUserState.editError(String errorMessage) = _EditError;
}
