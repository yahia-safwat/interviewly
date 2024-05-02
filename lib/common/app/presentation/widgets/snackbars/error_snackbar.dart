import 'package:flutter/material.dart';

void showErrorSnackbar(
  BuildContext context,
  String errorMessage, {
  Duration duration = const Duration(seconds: 4),
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(errorMessage),
      backgroundColor: Colors.red,
      duration: duration,
    ),
  );
}
