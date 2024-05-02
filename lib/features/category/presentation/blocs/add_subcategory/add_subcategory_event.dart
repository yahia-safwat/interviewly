part of 'add_subcategory_bloc.dart';

@freezed
class AddSubcategoryEvent with _$AddSubcategoryEvent {
  const factory AddSubcategoryEvent.started() = _Started;
  const factory AddSubcategoryEvent.addSubcategory({
    required UserEntity user,
    required SubcategoryEntity subcategory,
  }) = _AddSubcategory;
}
