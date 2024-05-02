import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../../domain/entities/category_entity.dart';
import '../../../blocs/category/category_bloc.dart';
import '../../../blocs/edit_category/edit_category_bloc.dart';

class EditCategoryForm extends StatelessWidget {
  EditCategoryForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Get the category name
    nameController.text =
        '${context.read<CategoryBloc>().clickedCategory?.name}';
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Category Name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter category name';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // Form is valid, Edit category
                final categoryName = nameController.text;

                // Create category
                final category = CategoryEntity(
                  id: context.read<CategoryBloc>().clickedCategory!.id,
                  name: categoryName,
                  createdAt:
                      context.read<CategoryBloc>().clickedCategory!.createdAt,
                  subcategories: context
                      .read<CategoryBloc>()
                      .clickedCategory!
                      .subcategories,
                );

                // Edit category
                context.read<EditCategoryBloc>().add(EditCategory(
                      user: context.read<UserBloc>().user!,
                      category: category,
                    ));
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
