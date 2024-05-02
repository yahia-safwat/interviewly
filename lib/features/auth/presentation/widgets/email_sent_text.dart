import 'package:flutter/material.dart';

class EmailSentText extends StatelessWidget {
  final String message;

  const EmailSentText({super.key, required this.message});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Text(
      message,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 16),
    );
  }
}
