import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/subcategory_entity.dart';
import '../../../domain/usecases/subcategory/edit_subcategory_usecase.dart';

part 'edit_subcategory_event.dart';
part 'edit_subcategory_state.dart';
part 'edit_subcategory_bloc.freezed.dart';

class EditSubcategoryBloc
    extends Bloc<EditSubcategoryEvent, EditSubcategoryState> {
  final EditSubCategoryUsecase editSubCategoryUsecase;

  EditSubcategoryBloc({required this.editSubCategoryUsecase})
      : super(const _Initial()) {
    on<_EditSubcategory>((_onEditSubcategory));
  }

  void _onEditSubcategory(
    _EditSubcategory event,
    Emitter<EditSubcategoryState> emit,
  ) async {
    emit(const EditSubcategoryState.editing());
    final Either<Failure, UserEntity> result =
        await editSubCategoryUsecase(event.user, event.subCategoryEntity);

    emit(result.fold(
      (failure) => EditSubcategoryState.editFailure(failure.message),
      (subCategory) => EditSubcategoryState.editSuccess(subCategory),
    ));
  }
}
