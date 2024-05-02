import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/category_entity.dart';
import '../../../domain/usecases/category/fetch_categories_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final FetchCategoriesUseCase fetchCategoriesUseCase;

  // Define Clicked Category
  CategoryEntity? clickedCategory;

  CategoryBloc({required this.fetchCategoriesUseCase})
      : super(const CategoryState.initial()) {
    on<FetchCategories>(_onFetchCategories);
  }

  void _onFetchCategories(
    FetchCategories event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.fetching());
    final result = await fetchCategoriesUseCase(event.user);
    result.fold(
      (failure) => emit(CategoryState.fetchError(failure.message)),
      (categories) => emit(CategoryState.fetchSuccess(categories)),
    );
  }
}
