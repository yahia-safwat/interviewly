import 'package:flutter/material.dart';
import 'edit_category_form.dart';

class EditCategoryBody extends StatelessWidget {
  const EditCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter the new category name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            EditCategoryForm(),
          ],
        ),
      ),
    );
  }
}
