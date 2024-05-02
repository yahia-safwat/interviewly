part of 'delete_subcategory_bloc.dart';

@freezed
class DeleteSubcategoryEvent with _$DeleteSubcategoryEvent {
  const factory DeleteSubcategoryEvent.started() = _Started;

  const factory DeleteSubcategoryEvent.deleteSubcategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  ) = _DeleteSubcategory;
}
