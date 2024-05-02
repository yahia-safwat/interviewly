// ignore_for_file: overridden_fields

import 'package:hive_flutter/hive_flutter.dart';

import '../../../category/domain/entities/subcategory_entity.dart';

part 'subcategory_model.g.dart';

@HiveType(typeId: 3)
class SubcategoryModel extends SubcategoryEntity {
  @HiveField(0)
  @override
  final String id;

  @HiveField(1)
  @override
  final String name;

  @HiveField(2)
  @override
  final String parentCategoryId;

  @override
  @HiveField(3)
  final DateTime createdAt;

  SubcategoryModel({
    required this.id,
    required this.name,
    required this.parentCategoryId,
    required this.createdAt,
  }) : super(
          id: id,
          name: name,
          parentCategoryId: parentCategoryId,
          createdAt: createdAt,
        );

  // Deserialize JSON to SubcategoryModel
  factory SubcategoryModel.fromJson(Map<String, dynamic> json) {
    return SubcategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
      parentCategoryId: json['parentCategoryId'] as String,
      createdAt: json['createdAt'].toDate() as DateTime,
    );
  }

  // Mapper function to convert SubcategoryModel to SubcategoryEntity
  factory SubcategoryModel.fromEntity(SubcategoryEntity category) {
    return SubcategoryModel(
      id: category.id,
      name: category.name,
      parentCategoryId: category.parentCategoryId,
      createdAt: category.createdAt,
    );
  }

  // Serialize SubcategoryModel to JSON format
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'parentCategoryId': parentCategoryId,
      'createdAt': createdAt,
    };
  }

  // Mapper function to convert SubcategoryModel to SubcategoryEntity
  SubcategoryEntity toEntity() {
    return SubcategoryEntity(
      id: id,
      name: name,
      parentCategoryId: parentCategoryId,
      createdAt: createdAt,
    );
  }
}
