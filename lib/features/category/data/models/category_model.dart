// ignore_for_file: overridden_fields

import 'package:hive_flutter/hive_flutter.dart';

import '../../../category/domain/entities/category_entity.dart';
import 'subcategory_model.dart';

part 'category_model.g.dart';

@HiveType(typeId: 2)
class CategoryModel extends CategoryEntity {
  @override
  @HiveField(0)
  final String id;

  @override
  @HiveField(1)
  final String name;

  @HiveField(2)
  final List<SubcategoryModel> subcategoryModels;

  @override
  @HiveField(3)
  final DateTime createdAt;

  CategoryModel({
    required this.id,
    required this.name,
    required this.subcategoryModels,
    required this.createdAt,
  }) : super(
          id: id,
          name: name,
          subcategories:
              subcategoryModels.map((model) => model.toEntity()).toList(),
          createdAt: createdAt,
        );

  // Deserialize JSON to CategoryModel
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      subcategoryModels: (json['subcategories'] as List)
          .map((subcatJson) => SubcategoryModel.fromJson(subcatJson))
          .toList(),
      createdAt: json['createdAt'].toDate() as DateTime,
    );
  }

  // Serialize CategoryModel to JSON format
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'subcategories':
          subcategoryModels.map((subcat) => subcat.toJson()).toList(),
      'createdAt': createdAt,
    };
  }

  // Serialize CategoryModel to Document format
  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'name': name,
      'subcategories': [],
      'createdAt': createdAt,
    };
  }

  // Mapper function to convert CategoryEntity to CategoryModel
  factory CategoryModel.fromEntity(CategoryEntity category) {
    final subcategoryModels = category.subcategories
        .map((subcat) => SubcategoryModel.fromEntity(subcat))
        .toList();
    return CategoryModel(
      id: category.id,
      name: category.name,
      subcategoryModels: subcategoryModels,
      createdAt: category.createdAt,
    );
  }

  // Mapper function to convert CategoryModel to CategoryEntity
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      name: name,
      subcategories:
          subcategoryModels.map((subcat) => subcat.toEntity()).toList(),
      createdAt: createdAt,
    );
  }
}
