import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/unique_id_helpers.dart';
import '../../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../../domain/entities/question_entity.dart';
import '../../../blocs/add_question/add_question_bloc.dart';

class AddQuestionForm extends StatelessWidget {
  AddQuestionForm({super.key});

  final TextEditingController questionController = TextEditingController();
  final TextEditingController answerController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            maxLength: 200,
            controller: questionController,
            decoration: const InputDecoration(
              labelText: 'Question',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter question';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: answerController,
            minLines: 6,
            maxLines: null,
            decoration: const InputDecoration(
              labelText: 'Answer',
              alignLabelWithHint: true,
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter answer';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // Form is valid, add question & answer
                final questionText = questionController.text;
                final answerText = answerController.text;

                // Get the category
                final category = context.read<AddQuestionBloc>().subCategory;

                // Get the user ID
                final userUid = context.read<UserBloc>().user?.uid;

                // Create question
                final question = QuestionEntity(
                  id: generateUniqueId(8),
                  userUid: userUid!,
                  categoryId: category!.parentCategoryId,
                  subcategoryId: category.id,
                  questionText: questionText,
                  answerText: answerText,
                  isFavorited: false,
                  isCommon: false,
                  knowsAnswer: false,
                  createdAt: DateTime.now(),
                );

                // Add category
                context.read<AddQuestionBloc>().add(
                      AddQuestionEvent.addQuestion(
                          user: context.read<UserBloc>().user!,
                          question: question),
                    );
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
