import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/dialogs.dart/delete_confirmation_dialog.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../question/presentation/blocs/question/question_bloc.dart';
import '../../domain/entities/subcategory_entity.dart';
import 'edit_subcategory_dialog.dart';

class SubCategoryTile extends StatelessWidget {
  final SubcategoryEntity subcategory;
  final VoidCallback? onRemove;

  const SubCategoryTile({
    super.key,
    required this.subcategory,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
      child: Card(
        elevation: 2.5, // Add elevation for shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: InkWell(
          onTap: () {
            // Save the clicked subcategory
            context.read<QuestionBloc>().clickedsubcategory = subcategory;

            // Add FetchQuestion Event
            context.read<QuestionBloc>().add(FetchQuestions(
                  user: context.read<UserBloc>().user!,
                  clickedCategory: subcategory,
                ));

            // Navigate to the subcategory page
            Navigator.pushNamed(
              context,
              AppRoutes.subCategory,
              arguments: subcategory,
            );
          },
          onLongPress: () => showDeleteConfirmationDialog(
            context,
            message:
                'Are you sure you want to delete [${subcategory.name}] category?',
            onRemove: onRemove,
          ),
          onDoubleTap: () => showEditSubcategoryDialog(
            context,
            subcategory: subcategory,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subcategory.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios, // Add arrow icon
                  color: Colors.blue, // Customize icon color
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
