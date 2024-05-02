import 'package:flutter/material.dart';

class DeleteAccountMessage extends StatelessWidget {
  const DeleteAccountMessage({super.key});

  @override
  Widget build(BuildContext context) {
    const boldRedStyle =
        TextStyle(fontWeight: FontWeight.bold, color: Colors.red);
    final normalStyle = Theme.of(context).textTheme.bodyMedium;

    return RichText(
      text: TextSpan(
        style: normalStyle,
        children: const <TextSpan>[
          TextSpan(text: 'By selecting '),
          TextSpan(text: '"Delete"', style: boldRedStyle),
          TextSpan(text: ', your account will be '),
          TextSpan(text: 'permanently removed', style: boldRedStyle),
          TextSpan(
              text:
                  '. This action will also erase all associated app data, which '),
          TextSpan(text: 'cannot be recovered', style: boldRedStyle),
          TextSpan(text: '.\n\nAs this is a '),
          TextSpan(text: 'security-sensitive action', style: boldRedStyle),
          TextSpan(text: ', re-authentication '),
          TextSpan(text: 'may be required.', style: boldRedStyle),
          TextSpan(
              text: ' before we proceed with the deletion of your account.'),
        ],
      ),
    );
  }
}
