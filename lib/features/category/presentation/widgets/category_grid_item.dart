import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/dialogs.dart/delete_confirmation_dialog.dart';
import '../../domain/entities/category_entity.dart';
import '../blocs/category/category_bloc.dart';
import '../pages/category/category_page.dart';

class CategoryGridItem extends StatelessWidget {
  final CategoryEntity category;
  final VoidCallback? onRemove;
  final VoidCallback? onEdit;

  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onRemove,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to the selected category screen.
          context.read<CategoryBloc>().clickedCategory = category;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(category: category),
            ),
          );
        },
        onLongPress: () => showDeleteConfirmationDialog(
          context,
          message:
              'Are you sure you want to delete [${category.name}] category?',
          onRemove: onRemove,
        ),
        onDoubleTap: onEdit,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(
              category.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
