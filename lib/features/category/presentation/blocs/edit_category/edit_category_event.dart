part of 'edit_category_bloc.dart';

abstract class EditCategoryEvent extends Equatable {
  const EditCategoryEvent();
  @override
  List<Object> get props => [];
}

class EditCategory extends EditCategoryEvent {
  final UserEntity user;
  final CategoryEntity category;

  const EditCategory({required this.user, required this.category});

  @override
  List<Object> get props => [category];
}
