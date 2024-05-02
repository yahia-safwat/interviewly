import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewly/features/category/domain/entities/subcategory_entity.dart';

import '../../../../../../core/helpers/unique_id_helpers.dart';
import '../../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../blocs/add_subcategory/add_subcategory_bloc.dart';
import '../../../blocs/category/category_bloc.dart';

class AddSubCategoryForm extends StatelessWidget {
  AddSubCategoryForm({super.key});

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

                // Get parent category
                final category = context.read<CategoryBloc>().clickedCategory;

                // Create category
                final subCategory = SubcategoryEntity(
                  id: generateUniqueId(8),
                  name: categoryName,
                  parentCategoryId: category!.id,
                  createdAt: DateTime.now(),
                );

                // Add category
                context.read<AddSubcategoryBloc>().add(
                      AddSubcategoryEvent.addSubcategory(
                        user: context.read<UserBloc>().user!,
                        subcategory: subCategory,
                      ),
                    );
              }
            },
            child: const Text('Add Category'),
          ),
        ],
      ),
    );
  }
}
