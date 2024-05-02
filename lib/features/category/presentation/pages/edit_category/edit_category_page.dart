import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../domain/entities/category_entity.dart';
import '../../blocs/edit_category/edit_category_bloc.dart';
import '../../blocs/category/category_bloc.dart';
import 'widgets/edit_category_body.dart';

class EditCategoryPage extends StatelessWidget {
  final CategoryEntity category;
  const EditCategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditCategoryBloc, EditCategoryState>(
      listener: _handleState,
      child: const EditCategoryBody(),
    );
  }

  void _handleState(BuildContext context, EditCategoryState state) {
    switch (state) {
      case EditCategoryInitial():
        null;
      case CategoryEditing():
        null;
      case CategoryEditSuccess():
        {
          // show success snackbar
          _showSuccessSnackbar(context, 'Category edited successfully');

          // update the user in the User bloc
          context.read<UserBloc>().add(UpdateUser(state.user));

          // Fetch categories
          context.read<CategoryBloc>().add(FetchCategories(user: state.user));

          // Navigate back
          Navigator.pop(context);
        }
      case CategoryEditFailure():
        {
          // show error snackbar
          _showErrorSnackbar(context, state.errorMessage);
        }
    }
  }

  _showErrorSnackbar(BuildContext context, String errorMsg) {
    // Show error message
    showErrorSnackbar(context, errorMsg);
  }

  _showSuccessSnackbar(BuildContext context, String message) {
    // Show Category edited successfully
    showSuccessSnackbar(context, message);
  }
}
