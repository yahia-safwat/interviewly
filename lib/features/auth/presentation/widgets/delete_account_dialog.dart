import 'package:flutter/material.dart';

import 'delete_account_message.dart';

void showDeleteAccountDialog(
  BuildContext context, {
  required VoidCallback? onConfirmed,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Confirm Account Deletion:'),
        titleTextStyle: Theme.of(context).textTheme.titleSmall,
        content: const DeleteAccountMessage(),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              onConfirmed?.call();
              Navigator.of(context).pop();
            },
            child: const Text('Delete'),
          ),
        ],
      );
    },
  );
}
