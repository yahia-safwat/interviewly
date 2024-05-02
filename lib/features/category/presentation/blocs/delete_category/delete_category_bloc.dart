import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/category_entity.dart';
import '../../../domain/usecases/category/delete_category_usecase.dart';

part 'delete_category_event.dart';
part 'delete_category_state.dart';

class DeleteCategoryBloc
    extends Bloc<DeleteCategoryEvent, DeleteCategoryState> {
  final DeleteCategoryUseCase deleteCategoryUseCase;

  DeleteCategoryBloc({required this.deleteCategoryUseCase})
      : super(DeleteCategoryInitial()) {
    on<DeleteCategory>(_onDeleteCategory);
  }

  void _onDeleteCategory(
    DeleteCategory event,
    Emitter<DeleteCategoryState> emit,
  ) async {
    emit(CategoryDeleting());
    final Either<Failure, UserEntity> result =
        await deleteCategoryUseCase(event.user, event.category);

    result.fold(
      (failure) => emit(CategoryDeleteFailure(errorMessage: failure.message)),
      (user) => emit(CategoryDeleteSuccess(user: user)),
    );
  }
}
