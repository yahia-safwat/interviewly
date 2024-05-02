import 'package:flutter/material.dart';

class ConfirmPasswordText extends StatelessWidget {
  final String text;

  const ConfirmPasswordText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}
