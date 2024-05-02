import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/subcategory_entity.dart';
import '../../../domain/usecases/subcategory/add_subcategory_usecase.dart';

part 'add_subcategory_event.dart';
part 'add_subcategory_state.dart';
part 'add_subcategory_bloc.freezed.dart';

class AddSubcategoryBloc
    extends Bloc<AddSubcategoryEvent, AddSubcategoryState> {
  final AddSubCategoryUseCase addSubCategoryUseCase;

  AddSubcategoryBloc({required this.addSubCategoryUseCase})
      : super(const _Initial()) {
    on<_AddSubcategory>(_onAddCategory);
  }

  FutureOr<void> _onAddCategory(
    _AddSubcategory event,
    Emitter<AddSubcategoryState> emit,
  ) async {
    emit(const AddSubcategoryState.adding());
    final Either<Failure, UserEntity> result = await addSubCategoryUseCase(
      event.user,
      event.subcategory,
    );

    // emit the result of the usecase call
    result.fold(
      (failure) => emit(AddSubcategoryState.addFailure(failure.message)),
      (subCategory) => emit(AddSubcategoryState.addSuccess(subCategory)),
    );
  }
}
