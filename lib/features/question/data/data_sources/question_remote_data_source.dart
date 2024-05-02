import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/handlers/fb_exception_handler.dart';
import '../../../../core/services/firebase/fb_firestore_service.dart';
import '../models/question_model.dart';

abstract class QuestionRemoteDataSource {
  Future<void> addQuestion(QuestionModel question);
  Future<void> editQuestion(QuestionModel question);
  Future<void> deleteQuestion(QuestionModel question);
  Future<void> toggleQuestionStatus(QuestionModel questionModel);
}

class QuestionRemoteDataSourceImpl implements QuestionRemoteDataSource {
  final FBFirestoreService fbFirestoreService;

  QuestionRemoteDataSourceImpl({required this.fbFirestoreService});

  @override
  Future<void> addQuestion(QuestionModel question) async {
    try {
      // Create category document in a user document
      await fbFirestoreService.addDocument(
        collection: 'users/${question.userUid}/questions',
        documentId: question.id,
        data: question.toDocument(),
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while adding question');
    }
  }

  @override
  Future<void> editQuestion(QuestionModel question) async {
    try {
      // Update question document in the user's questions collection
      await fbFirestoreService.updateDocument(
        collection: 'users/${question.userUid}/questions',
        documentId: question.id,
        newData: question.toDocument(),
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while editing question');
    }
  }

  @override
  Future<void> deleteQuestion(QuestionModel question) async {
    try {
      // Delete question document from the user's questions collection
      await fbFirestoreService.deleteDocument(
        collection: 'users/${question.userUid}/questions',
        documentId: question.id,
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while deleting question');
    }
  }

  @override
  Future<void> toggleQuestionStatus(QuestionModel question) async {
    try {
      // Update question status in the user's questions collection
      await fbFirestoreService.updateDocument(
        collection: 'users/${question.userUid}/questions',
        documentId: question.id,
        newData: {'knowsAnswer': !question.knowsAnswer},
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(
          message: 'An error occurred while toggling question status');
    }
  }
}
