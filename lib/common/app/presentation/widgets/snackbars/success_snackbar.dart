import 'package:flutter/material.dart';

void showSuccessSnackbar(BuildContext context, String errorMessage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(errorMessage),
      backgroundColor: Colors.green,
    ),
  );
}
