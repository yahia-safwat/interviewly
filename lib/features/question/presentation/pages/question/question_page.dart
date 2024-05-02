import 'package:flutter/material.dart';

import '../../../domain/entities/question_entity.dart';
import 'widgets/question_details.dart';

class QuestionPage extends StatelessWidget {
  final QuestionEntity question;

  const QuestionPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: const Text('Question Details'),
      ),
      body: QuestionDetails(question: question),
    );
  }
}
