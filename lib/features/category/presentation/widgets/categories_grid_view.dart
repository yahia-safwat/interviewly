import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewly/core/routes/app_routes.dart';

import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/category_entity.dart';
import '../blocs/category/category_bloc.dart';
import '../blocs/delete_category/delete_category_bloc.dart';
import 'category_grid_item.dart';

class CategoriesGridView extends StatelessWidget {
  final List<CategoryEntity?> categories;

  const CategoriesGridView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Adjust the number of columns as needed
        crossAxisSpacing: 8.0, // Add spacing between columns
        mainAxisSpacing: 8.0, // Add spacing between rows
        childAspectRatio: 1.5, // Adjust aspect ratio of grid items
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryGridItem(
          category: category!,
          onRemove: () {
            // add remove event
            context.read<DeleteCategoryBloc>().add(
                  DeleteCategory(
                    user: context.read<UserBloc>().user!,
                    category: category,
                  ),
                );
          },
          onEdit: () {
            // save
            context.read<CategoryBloc>().clickedCategory = category;

            // Navigate to edit category page
            Navigator.pushNamed(
              context,
              AppRoutes.editCategory,
              arguments: category,
            );
          },
        );
      },
    );
  }
}
