import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../../domain/entities/question_entity.dart';
import '../../../blocs/edit_question/edit_question_bloc.dart';

class EditQuestionForm extends StatelessWidget {
  final QuestionEntity question;

  const EditQuestionForm({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    final TextEditingController questionController =
        TextEditingController(text: question.questionText);
    final TextEditingController answerController =
        TextEditingController(text: question.answerText);

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                // Form is valid, update question & answer
                final editedQuestion = question.copyWithEntity(
                  questionText: questionController.text,
                  answerText: answerController.text,
                );

                // Add category
                context.read<EditQuestionBloc>().add(
                      EditQuestionEvent.editQuestion(
                        user: context.read<UserBloc>().user!,
                        question: editedQuestion,
                      ),
                    );
              }
            },
            child: const Text('Save Changes'),
          ),
        ],
      ),
    );
  }
}
