part of 'edit_category_bloc.dart';

abstract class EditCategoryState extends Equatable {
  const EditCategoryState();
  @override
  List<Object> get props => [];
}

class EditCategoryInitial extends EditCategoryState {}

class CategoryEditing extends EditCategoryState {}

class CategoryEditSuccess extends EditCategoryState {
  final UserEntity user;

  const CategoryEditSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

class CategoryEditFailure extends EditCategoryState {
  final String errorMessage;

  const CategoryEditFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
