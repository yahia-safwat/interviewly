import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/subcategory_entity.dart';
import '../../../domain/usecases/subcategory/delete_subcategory_usecase.dart';

part 'delete_subcategory_event.dart';
part 'delete_subcategory_state.dart';
part 'delete_subcategory_bloc.freezed.dart';

class DeleteSubcategoryBloc
    extends Bloc<DeleteSubcategoryEvent, DeleteSubcategoryState> {
  final DeleteSubCategoryUsecase deleteSubCategoryUsecase;
  DeleteSubcategoryBloc({required this.deleteSubCategoryUsecase})
      : super(const _Initial()) {
    on<_DeleteSubcategory>(__onDeleteSubcategory);
  }

  void __onDeleteSubcategory(
    _DeleteSubcategory event,
    Emitter<DeleteSubcategoryState> emit,
  ) async {
    emit(const DeleteSubcategoryState.deleting());
    final Either<Failure, UserEntity> result =
        await deleteSubCategoryUsecase(event.user, event.subCategoryEntity);

    emit(result.fold(
      (failure) => DeleteSubcategoryState.deleteFailure(failure.message),
      (subCategoryId) => DeleteSubcategoryState.deleteSuccess(subCategoryId),
    ));
  }
}
