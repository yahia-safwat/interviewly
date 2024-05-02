import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final String title;
  final ValueNotifier<bool> valueNotifier;

  const CustomCheckbox({
    super.key,
    required this.title,
    required this.valueNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
          return Checkbox(
            value: valueNotifier.value,
            onChanged: (bool? value) {
              setState(() {
                valueNotifier.value = value!;
              });
            },
          );
        }),
        Text(title),
      ],
    );
  }
}
