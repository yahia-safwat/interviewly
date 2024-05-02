part of 'edit_subcategory_bloc.dart';

@freezed
class EditSubcategoryState with _$EditSubcategoryState {
  const factory EditSubcategoryState.initial() = _Initial;

  const factory EditSubcategoryState.editing() = _Editing;

  const factory EditSubcategoryState.editSuccess(UserEntity user) =
      _EditSuccess;

  const factory EditSubcategoryState.editFailure(String errorMsg) =
      _EditFailure;
}
