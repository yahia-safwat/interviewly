import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/category_entity.dart';
import '../../../domain/usecases/category/edit_category_usecase.dart';

part 'edit_category_event.dart';
part 'edit_category_state.dart';

class EditCategoryBloc extends Bloc<EditCategoryEvent, EditCategoryState> {
  final EditCategoryUseCase editCategoryUseCase;

  EditCategoryBloc({required this.editCategoryUseCase})
      : super(EditCategoryInitial()) {
    on<EditCategory>(_onEditCategory);
  }

  void _onEditCategory(
    EditCategory event,
    Emitter<EditCategoryState> emit,
  ) async {
    emit(CategoryEditing());
    final Either<Failure, UserEntity> result =
        await editCategoryUseCase(event.user, event.category);
    emit(result.fold(
      (failure) => CategoryEditFailure(errorMessage: failure.message),
      (user) => CategoryEditSuccess(user: user),
    ));
  }
}
