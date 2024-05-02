import 'package:flutter_test/flutter_test.dart';
import 'package:interviewly/features/question/data/models/question_model.dart';
import 'package:interviewly/features/question/domain/entities/question_entity.dart';

void main() {
  var testQuestionModel = QuestionModel(
    id: '1',
    userUid: 'user123',
    categoryId: 'cat123',
    subcategoryId: 'subcat123',
    questionText: 'What is Flutter?',
    answerText:
        'Flutter is a UI toolkit from Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    isFavorited: true,
    isCommon: false,
    knowsAnswer: true,
    createdAt: DateTime.now(),
  );

  final testJson = {
    'id': '1',
    'userUid': 'user123',
    'categoryId': 'cat123',
    'subcategoryId': 'subcat123',
    'questionText': 'What is Flutter?',
    'answerText':
        'Flutter is a UI toolkit from Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    'isFavorited': true,
    'isCommon': false,
    'knowsAnswer': true,
    'createdAt': DateTime.now().toIso8601String(),
  };
  group('QuestionModel', () {
    test('should be a subclass of QuestionEntity', () {
      expect(testQuestionModel, isA<QuestionEntity>());
    });

    test('fromJson() should correctly deserialize JSON', () {
      // Arrange
      // Act
      final question = QuestionModel.fromJson(testJson);

      // Assert
      expect(question.id, '1');
      expect(question.userUid, 'user123');
      expect(question.categoryId, 'cat123');
      expect(question.subcategoryId, 'subcat123');
      expect(question.questionText, 'What is Flutter?');
      expect(question.answerText,
          'Flutter is a UI toolkit from Google for building natively compiled applications for mobile, web, and desktop from a single codebase.');
      expect(question.isFavorited, isTrue);
      expect(question.isCommon, isFalse);
      expect(question.knowsAnswer, isTrue);
      expect(question.createdAt, DateTime.now());
    });

    test('toJson() should correctly serialize to JSON', () {
      // Arrange
      final question = testQuestionModel;

      // Act
      final result = question.toJson();

      // Assert
      expect(result, testJson);
    });

    test('toEntity() should correctly convert to QuestionEntity', () {
      // Arrange
      final question = testQuestionModel;

      // Act
      final entity = question.toEntity();

      // Assert
      expect(entity.id, '1');
      expect(entity.userUid, 'user123');
      expect(entity.categoryId, 'cat123');
      expect(entity.subcategoryId, 'subcat123');
      expect(entity.questionText, 'What is Flutter?');
      expect(entity.answerText,
          'Flutter is a UI toolkit from Google for building natively compiled applications for mobile, web, and desktop from a single codebase.');
      expect(entity.isFavorited, isTrue);
      expect(entity.isCommon, isFalse);
      expect(entity.knowsAnswer, isTrue);
      expect(entity.createdAt, DateTime.now());
    });
  });
}
