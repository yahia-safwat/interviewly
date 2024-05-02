part of 'category_bloc.dart';

@freezed
sealed class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  // Fetching categories States
  const factory CategoryState.fetching() = _Fetching;
  const factory CategoryState.fetchSuccess(List<CategoryEntity?> categories) =
      _FetchSuccess;
  const factory CategoryState.fetchError(String errorMessage) = _FetchError;
}
