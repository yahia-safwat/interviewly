part of 'add_category_bloc.dart';

abstract class AddCategoryEvent extends Equatable {
  const AddCategoryEvent();
  @override
  List<Object> get props => [];
}

class AddCategory extends AddCategoryEvent {
  final UserEntity user;
  final CategoryEntity category;

  const AddCategory({required this.user, required this.category});

  @override
  List<Object> get props => [category];
}
