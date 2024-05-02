part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class FetchCategories extends CategoryEvent {
  final UserEntity? user;

  const FetchCategories({required this.user});

  @override
  List<Object> get props => [user!];
}
