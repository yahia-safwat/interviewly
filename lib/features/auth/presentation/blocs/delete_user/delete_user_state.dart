part of 'delete_user_bloc.dart';

@freezed
class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = _Initial;
  const factory DeleteUserState.deleting() = _Deleting;
  const factory DeleteUserState.deleteSuccess() = _DeleteSuccess;
  const factory DeleteUserState.deleteError(String errorMessage) = _DeleteError;
}
