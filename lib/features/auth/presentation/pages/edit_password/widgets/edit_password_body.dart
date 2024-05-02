import 'package:flutter/material.dart';

import 'edit_password_form.dart';

class EditPasswordBody extends StatelessWidget {
  const EditPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          EditPasswordForm(),
        ],
      ),
    );
  }
}
