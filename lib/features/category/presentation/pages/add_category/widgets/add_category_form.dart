import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/unique_id_helpers.dart';
import '../../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../../domain/entities/category_entity.dart';
import '../../../blocs/add_category/add_category_bloc.dart';

class AddCategoryForm extends StatelessWidget {
  AddCategoryForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                // Form is valid, add category
                final categoryName = nameController.text;

                // Create category
                final category = CategoryEntity(
                  id: generateUniqueId(8),
                  name: categoryName,
                  subcategories: [],
                  createdAt: DateTime.now(),
                );

                // Add category
                context.read<AddCategoryBloc>().add(AddCategory(
                      user: context.read<UserBloc>().user!,
                      category: category,
                    ));
              }
            },
            child: const Text('Add Category'),
          ),
        ],
      ),
    );
  }
}
