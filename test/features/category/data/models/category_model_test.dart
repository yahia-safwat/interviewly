import 'package:flutter_test/flutter_test.dart';
import 'package:interviewly/features/category/data/models/category_model.dart';
import 'package:interviewly/features/category/data/models/subcategory_model.dart';
import 'package:interviewly/features/category/domain/entities/category_entity.dart';

void main() {
  var testCategoryModel = CategoryModel(
    id: '1',
    name: 'Electronics',
    createdAt: DateTime.now(),
    subcategoryModels: [
      SubcategoryModel(
          id: '101',
          name: 'Phones',
          parentCategoryId: '1',
          createdAt: DateTime.now()),
      SubcategoryModel(
          id: '102',
          name: 'Laptops',
          parentCategoryId: '1',
          createdAt: DateTime.now()),
    ],
  );

  final testJson = {
    'id': '1',
    'name': 'Electronics',
    'createdAt': DateTime.now().toIso8601String(),
    'subcategories': [
      {
        'id': '101',
        'name': 'Phones',
        'parentCategoryId': '1',
        'createdAt': DateTime.now().toIso8601String()
      },
      {
        'id': '102',
        'name': 'Laptops',
        'parentCategoryId': '1',
        'createdAt': DateTime.now().toIso8601String()
      },
    ],
  };

  group('CategoryModel', () {
    test('should be a subclass of CategoryEntity', () {
      expect(testCategoryModel, isA<CategoryEntity>());
    });

    test('fromJson() should correctly deserialize JSON', () {
      // Arrange
      // Act
      final category = CategoryModel.fromJson(testJson);

      // Assert
      expect(category.id, '1');
      expect(category.name, 'Electronics');
      expect(category.createdAt, DateTime.now());
      expect(category.subcategoryModels, hasLength(2));
      expect(category.subcategoryModels[0].id, '101');
      expect(category.subcategoryModels[0].name, 'Phones');
      expect(category.subcategoryModels[1].id, '102');
      expect(category.subcategoryModels[1].name, 'Laptops');
    });

    test('toJson() should correctly serialize to JSON', () {
      // Arrange
      // Act
      final result = testCategoryModel.toJson();

      // Assert
      expect(result, testJson);
    });

    test('toEntity() should correctly convert to CategoryEntity', () {
      // Arrange
      final category = testCategoryModel;

      // Act
      final entity = category.toEntity();

      // Assert
      expect(entity.id, '1');
      expect(entity.name, 'Electronics');
      expect(entity.createdAt, DateTime.now());
      expect(entity.subcategories, hasLength(2));
      expect(entity.subcategories[0].id, '101');
      expect(entity.subcategories[0].name, 'Phones');
      expect(entity.subcategories[1].id, '102');
      expect(entity.subcategories[1].name, 'Laptops');
    });
  });
}
