import 'subcategory_entity.dart';

class CategoryEntity {
  final String id;
  final String name;
  final List<SubcategoryEntity> subcategories;
  final DateTime createdAt;

  CategoryEntity({
    required this.id,
    required this.name,
    required this.subcategories,
    required this.createdAt,
  });

  CategoryEntity copyWithEntity({
    String? id,
    String? name,
    List<SubcategoryEntity>? subcategories,
    DateTime? createdAt,
  }) {
    return CategoryEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      subcategories: subcategories ?? this.subcategories,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
