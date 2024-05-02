part of 'delete_subcategory_bloc.dart';

@freezed
class DeleteSubcategoryState with _$DeleteSubcategoryState {
  const factory DeleteSubcategoryState.initial() = _Initial;

  const factory DeleteSubcategoryState.deleting() = _Deleting;

  const factory DeleteSubcategoryState.deleteSuccess(UserEntity user) =
      _DeleteSuccess;

  const factory DeleteSubcategoryState.deleteFailure(String errorMsg) =
      _DeleteFailure;
}
