import 'package:flutter/material.dart';
import 'add_question_form.dart';

class AddQuestionBody extends StatelessWidget {
  const AddQuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          AddQuestionForm(),
        ],
      ),
    );
  }
}
