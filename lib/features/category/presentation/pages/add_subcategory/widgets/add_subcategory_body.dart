import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/category/category_bloc.dart';
import 'add_subcategory_form.dart';

class AddSubCategoryBody extends StatelessWidget {
  const AddSubCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    final category = context.read<CategoryBloc>().clickedCategory;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Category in ${category!.name}'),
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
            AddSubCategoryForm(),
          ],
        ),
      ),
    );
  }
}
