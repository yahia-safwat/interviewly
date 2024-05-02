import 'package:flutter/material.dart';

void showErrorDialog(
  BuildContext context, {
  required String title,
  required String message,
}) {
  showDialog(
    context: context,
    barrierDismissible: false, // User must tap button to close dialog
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Icon(
          Icons.error_outline,
          color: Colors.red,
          size: 60.0, // Slightly larger icon for emphasis
        ),
        titlePadding:
            const EdgeInsets.only(top: 20.0), // Add padding above the icon
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 20.0), // Symmetrical padding for content
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                title,
                textAlign: TextAlign.center, // Center the title text
                style: const TextStyle(
                  fontSize: 20.0, // Slightly larger font size for title
                  fontWeight: FontWeight.bold, // Bold font weight for title
                ),
              ),
              const SizedBox(
                  height: 16), // Increased space between title and message
              Text(
                message,
                textAlign: TextAlign.center, // Center the message text
                style: const TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
        actionsAlignment: MainAxisAlignment.center, // Center the action buttons
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Use a red color for the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    20.0), // Rounded corners for the button
              ),
            ),
            child: const Text(
              'OK',
              style: TextStyle(
                  color: Colors.white), // White text for better contrast
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}
