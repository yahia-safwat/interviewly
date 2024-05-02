import 'package:flutter/material.dart';
import 'add_category_form.dart';

class AddCategoryBody extends StatelessWidget {
  const AddCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Category',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AddCategoryForm(),
          ],
        ),
      ),
    );
  }
}
