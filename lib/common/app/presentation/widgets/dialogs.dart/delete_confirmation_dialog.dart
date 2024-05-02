import 'package:flutter/material.dart';

void showDeleteConfirmationDialog(
  BuildContext context, {
  required String message,
  required VoidCallback? onRemove,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Confirm Delete:'),
      titleTextStyle: Theme.of(context).textTheme.titleSmall,
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
            onRemove?.call(); // Call the remove callback
          },
          child: const Text('Delete'),
        ),
      ],
    ),
  );
}
