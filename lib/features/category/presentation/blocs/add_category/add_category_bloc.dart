import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/category_entity.dart';
import '../../../domain/usecases/category/add_category_usecase.dart';

part 'add_category_event.dart';
part 'add_category_state.dart';
part 'add_category_bloc.freezed.dart';

class AddCategoryBloc extends Bloc<AddCategoryEvent, AddCategoryState> {
  final AddCategoryUseCase addCategoryUseCase;

  AddCategoryBloc({required this.addCategoryUseCase})
      : super(const AddCategoryState.initial()) {
    on<AddCategory>(_onAddCategory);
  }

  void _onAddCategory(
    AddCategory event,
    Emitter<AddCategoryState> emit,
  ) async {
    emit(const AddCategoryState.adding());
    final Either<Failure, UserEntity> result =
        await addCategoryUseCase(event.user, event.category);
    emit(result.fold(
      (failure) => AddCategoryState.addFailure(failure.message),
      (user) => AddCategoryState.addSuccess(user),
    ));
  }
}
