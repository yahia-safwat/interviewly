import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../blocs/edit_question/edit_question_bloc.dart';
import 'edit_question_form.dart';

class EditQuestionBody extends StatelessWidget {
  const EditQuestionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          EditQuestionForm(
            question: context.read<EditQuestionBloc>().question!,
          ),
        ],
      ),
    );
  }
}
