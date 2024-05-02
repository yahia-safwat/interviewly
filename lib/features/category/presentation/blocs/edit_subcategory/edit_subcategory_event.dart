part of 'edit_subcategory_bloc.dart';

@freezed
class EditSubcategoryEvent with _$EditSubcategoryEvent {
  const factory EditSubcategoryEvent.started() = _Started;

  const factory EditSubcategoryEvent.editSubcategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  ) = _EditSubcategory;
}
