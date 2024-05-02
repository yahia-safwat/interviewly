import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/subcategory_entity.dart';
import '../blocs/edit_subcategory/edit_subcategory_bloc.dart';

void showEditSubcategoryDialog(
  BuildContext context, {
  required SubcategoryEntity subcategory,
}) {
  // Controller for the text field
  TextEditingController nameController =
      TextEditingController(text: subcategory.name);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Edit Subcategory'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                // You can use a controller to get the value of the text field
                // or handle it using onChanged callback.
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Close the dialog
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Form is valid, Edit category
              final categoryName = nameController.text;

              // Update the subcategory details and close the dialog
              context
                  .read<EditSubcategoryBloc>()
                  .add(EditSubcategoryEvent.editSubcategory(
                    context.read<UserBloc>().user!,
                    subcategory.copyWithEntity(
                      name: categoryName,
                    ),
                  ));

              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      );
    },
  );
}
