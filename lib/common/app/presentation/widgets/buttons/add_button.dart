import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final void Function()? onPressed;

  const AddButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_rounded),
      onPressed: onPressed,
    );
  }
}
