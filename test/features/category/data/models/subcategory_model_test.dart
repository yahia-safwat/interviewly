import 'package:flutter_test/flutter_test.dart';
import 'package:interviewly/features/category/data/models/subcategory_model.dart';
import 'package:interviewly/features/category/domain/entities/subcategory_entity.dart';

void main() {
  var testSubcategoryModel = SubcategoryModel(
    id: '101',
    name: 'Phones',
    parentCategoryId: '1',
    createdAt: DateTime.now(),
  );

  final testJson = {
    'id': '101',
    'name': 'Phones',
    'parentCategoryId': '1',
    'createdAt': DateTime.now().toIso8601String(),
  };

  group('SubcategoryModel', () {
    test('should be a subclass of SubcategoryEntity', () {
      expect(testSubcategoryModel, isA<SubcategoryEntity>());
    });

    test('fromJson() should correctly deserialize JSON', () {
      // Arrange
      // Act
      final subcategory = SubcategoryModel.fromJson(testJson);

      // Assert
      expect(subcategory.id, '101');
      expect(subcategory.name, 'Phones');
      expect(subcategory.parentCategoryId, '1');
      expect(subcategory.createdAt, DateTime.now());
    });

    test('toJson() should correctly serialize to JSON', () {
      // Arrange
      final subcategory = testSubcategoryModel;

      // Act
      final result = subcategory.toJson();

      // Assert
      expect(result, testJson);
    });

    test('toEntity() should correctly convert to SubcategoryEntity', () {
      // Arrange
      final subcategory = testSubcategoryModel;

      // Act
      final entity = subcategory.toEntity();

      // Assert
      expect(entity.id, '101');
      expect(entity.name, 'Phones');
      expect(entity.parentCategoryId, '1');
      expect(entity.createdAt, DateTime.now());
    });
  });
}
