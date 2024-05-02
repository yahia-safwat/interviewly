import 'package:flutter_test/flutter_test.dart';
import 'package:interviewly/features/auth/data/models/user_model.dart';
import 'package:interviewly/features/auth/domain/entities/user_entity.dart';
import 'package:interviewly/features/category/data/models/category_model.dart';
import 'package:interviewly/features/category/data/models/subcategory_model.dart';
import 'package:interviewly/features/question/data/models/question_model.dart';

void main() {
  final testUserModel = UserModel(
    uid: '1',
    email: 'test@example.com',
    displayName: 'Test User',
    authProvider: 'Email&Password',
    isEmailVerified: true,
    jobTitle: 'Developer',
    isStudent: false,
    categoryModels: [
      CategoryModel(
        id: '101',
        name: 'Category 1',
        createdAt: DateTime.now(),
        subcategoryModels: [
          SubcategoryModel(
              id: '201',
              name: 'Subcategory 1',
              parentCategoryId: '101',
              createdAt: DateTime.now()),
          SubcategoryModel(
              id: '202',
              name: 'Subcategory 2',
              parentCategoryId: '101',
              createdAt: DateTime.now()),
        ],
      ),
      CategoryModel(
        id: '102',
        name: 'Category 2',
        createdAt: DateTime.now(),
        subcategoryModels: [
          SubcategoryModel(
              id: '203',
              name: 'Subcategory 3',
              parentCategoryId: '102',
              createdAt: DateTime.now()),
        ],
      ),
    ],
    questionModels: [
      QuestionModel(
        id: '301',
        userUid: '1',
        categoryId: '101',
        subcategoryId: '201',
        questionText: 'Question 1',
        answerText: 'Answer 1',
        isFavorited: false,
        isCommon: true,
        knowsAnswer: true,
        createdAt: DateTime.now(),
      ),
      QuestionModel(
        id: '302',
        userUid: '1',
        categoryId: '102',
        subcategoryId: '203',
        questionText: 'Question 2',
        answerText: 'Answer 2',
        isFavorited: true,
        isCommon: false,
        knowsAnswer: false,
        createdAt: DateTime.now(),
      ),
    ],
  );

  final testJson = {
    'uid': '1',
    'email': 'test@example.com',
    'displayName': 'Test User',
    'authProvider': 'Email&Password',
    'isEmailVerified': true,
    'jobTitle': 'Developer',
    'isStudent': false,
    'categoryModels': [
      {
        'id': '101',
        'name': 'Category 1',
        'createdAt': DateTime.now().toIso8601String(),
        'subcategories': [
          {
            'id': '201',
            'name': 'Subcategory 1',
            'parentCategoryId': '101',
            'createdAt': DateTime.now().toIso8601String()
          },
          {
            'id': '202',
            'name': 'Subcategory 2',
            'parentCategoryId': '101',
            'createdAt': DateTime.now().toIso8601String()
          },
        ],
      },
      {
        'id': '102',
        'name': 'Category 2',
        'createdAt': DateTime.now().toIso8601String(),
        'subcategories': [
          {
            'id': '203',
            'name': 'Subcategory 3',
            'parentCategoryId': '102',
            'createdAt': DateTime.now().toIso8601String()
          },
        ],
      },
    ],
    'questionModels': [
      {
        'id': '301',
        'userUid': '1',
        'categoryId': '101',
        'subcategoryId': '201',
        'questionText': 'Question 1',
        'answerText': 'Answer 1',
        'isFavorited': false,
        'isCommon': true,
        'knowsAnswer': true,
        'createdAt': DateTime.now().toIso8601String(),
      },
      {
        'id': '302',
        'userUid': '1',
        'categoryId': '102',
        'subcategoryId': '203',
        'questionText': 'Question 2',
        'answerText': 'Answer 2',
        'isFavorited': true,
        'isCommon': false,
        'knowsAnswer': false,
        'createdAt': DateTime.now().toIso8601String(),
      },
    ],
  };

  group('UserModel', () {
    test('should be a subclass of UserEntity', () {
      expect(testUserModel, isA<UserEntity>());
    });

    test('fromJson() should correctly deserialize JSON', () {
      // Arrange
      // Act
      final userModel = UserModel.fromJson(testJson);

      // Assert
      expect(userModel.uid, '1');
      expect(userModel.email, 'test@example.com');
      expect(userModel.displayName, 'Test User');
      expect(userModel.authProvider, 'Email&Password');
      expect(userModel.isEmailVerified, true);
      expect(userModel.jobTitle, 'Developer');
      expect(userModel.isStudent, false);
      expect(userModel.categories, hasLength(2));
      expect(userModel.categories[0].id, '101');
      expect(userModel.categories[0].name, 'Category 1');
      expect(userModel.categories[0].createdAt, DateTime.now());
      expect(userModel.categories[0].subcategories, hasLength(2));
      expect(userModel.categories[0].subcategories[0].id, '201');
      expect(userModel.categories[0].subcategories[0].name, 'Subcategory 1');
      expect(
          userModel.categories[0].subcategories[1].createdAt, DateTime.now());
      expect(userModel.categories[1].id, '102');
      expect(userModel.categories[1].name, 'Category 2');
      expect(userModel.categories[1].createdAt, DateTime.now());
      expect(userModel.categories[1].subcategories, hasLength(1));
      expect(userModel.categories[1].subcategories[0].id, '203');
      expect(userModel.categories[1].subcategories[0].name, 'Subcategory 3');
      expect(
          userModel.categories[1].subcategories[0].createdAt, DateTime.now());
      expect(userModel.questions, hasLength(2));
      expect(userModel.questions[0].id, '301');
      expect(userModel.questions[0].questionText, 'Question 1');
      expect(userModel.questions[0].createdAt, DateTime.now());
      expect(userModel.questions[1].id, '302');
      expect(userModel.questions[1].questionText, 'Question 2');
      expect(userModel.questions[1].createdAt, DateTime.now());
    });

    test('toJson() should correctly serialize to JSON', () {
      // Arrange
      // Act
      final result = testUserModel.toJson();

      // Assert
      expect(result, testJson);
    });

    test('toEntity() should correctly convert to UserEntity', () {
      // Arrange
      // Act
      final entity = testUserModel.toEntity();

      // Assert
      expect(entity.uid, '1');
      expect(entity.email, 'test@example.com');
      expect(entity.displayName, 'Test User');
      expect(entity.authProvider, 'Email&Password');
      expect(entity.isEmailVerified, true);
      expect(entity.jobTitle, 'Developer');
      expect(entity.isStudent, false);
      expect(entity.categories, hasLength(2));
      expect(entity.categories[0].id, '101');
      expect(entity.categories[0].name, 'Category 1');
      expect(entity.categories[0].subcategories, hasLength(2));
      expect(entity.categories[0].subcategories[0].id, '201');
      expect(entity.categories[0].subcategories[0].name, 'Subcategory 1');
      expect(entity.categories[1].id, '102');
      expect(entity.categories[1].name, 'Category 2');
      expect(entity.categories[1].subcategories, hasLength(1));
      expect(entity.categories[1].subcategories[0].id, '203');
      expect(entity.categories[1].subcategories[0].name, 'Subcategory 3');
      expect(entity.questions, hasLength(2));
      expect(entity.questions[0].id, '301');
      expect(entity.questions[0].questionText, 'Question 1');
      expect(entity.questions[0].createdAt, DateTime.now());
      expect(entity.questions[1].id, '302');
      expect(entity.questions[1].questionText, 'Question 2');
      expect(entity.questions[1].createdAt, DateTime.now());
    });
  });
}
