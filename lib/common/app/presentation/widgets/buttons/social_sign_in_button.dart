import 'package:flutter/material.dart';

class SocialSignInButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const SocialSignInButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      icon: Icon(icon),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(text),
      ),
    );
  }
}
