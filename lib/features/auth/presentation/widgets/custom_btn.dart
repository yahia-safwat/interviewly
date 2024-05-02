import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double borderRadius;
  final VoidCallback onPressed;
  final String text;

  const CustomButton({
    super.key,
    required this.width,
    required this.borderRadius,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
          ),
        ),
      ),
    );
  }
}
