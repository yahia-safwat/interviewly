part of 'delete_cached_user_bloc.dart';

@freezed
class DeleteCachedUserState with _$DeleteCachedUserState {
  const factory DeleteCachedUserState.initial() = _Initial;
  const factory DeleteCachedUserState.deleting() = _Deleting;
  const factory DeleteCachedUserState.deleteSuccess() = _DeleteSuccess;
  const factory DeleteCachedUserState.deleteError(String errorMessage) =
      _DeleteError;
}
