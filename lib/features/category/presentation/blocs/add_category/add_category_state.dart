part of 'add_category_bloc.dart';

@freezed
sealed class AddCategoryState with _$AddCategoryState {
  const factory AddCategoryState.initial() = _initial;
  const factory AddCategoryState.adding() = _adding;
  const factory AddCategoryState.addSuccess(UserEntity user) = _addSuccess;
  const factory AddCategoryState.addFailure(String errorMessage) = _addFailure;
}
