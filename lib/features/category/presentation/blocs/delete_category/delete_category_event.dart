part of 'delete_category_bloc.dart';

abstract class DeleteCategoryEvent extends Equatable {
  const DeleteCategoryEvent();
  @override
  List<Object> get props => [];
}

class DeleteCategory extends DeleteCategoryEvent {
  final UserEntity user;
  final CategoryEntity category;

  const DeleteCategory({required this.user, required this.category});

  @override
  List<Object> get props => [category];
}
