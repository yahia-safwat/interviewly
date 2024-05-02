part of 'delete_category_bloc.dart';

sealed class DeleteCategoryState extends Equatable {
  const DeleteCategoryState();
  @override
  List<Object> get props => [];
}

class DeleteCategoryInitial extends DeleteCategoryState {}

class CategoryDeleting extends DeleteCategoryState {}

class CategoryDeleteSuccess extends DeleteCategoryState {
  final UserEntity user;

  const CategoryDeleteSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

class CategoryDeleteFailure extends DeleteCategoryState {
  final String errorMessage;

  const CategoryDeleteFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
