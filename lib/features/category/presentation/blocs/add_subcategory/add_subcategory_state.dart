part of 'add_subcategory_bloc.dart';

@freezed
class AddSubcategoryState with _$AddSubcategoryState {
  const factory AddSubcategoryState.initial() = _Initial;
  const factory AddSubcategoryState.adding() = _Adding;
  const factory AddSubcategoryState.addSuccess(UserEntity user) = _AddSuccess;
  const factory AddSubcategoryState.addFailure(String message) = _AddFailure;
}
