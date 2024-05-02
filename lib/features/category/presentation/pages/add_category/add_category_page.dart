import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../blocs/add_category/add_category_bloc.dart';
import '../../blocs/category/category_bloc.dart';
import 'widgets/add_category_body.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCategoryBloc, AddCategoryState>(
      listener: _handleState,
      child: const AddCategoryBody(),
    );
  }

  void _handleState(BuildContext context, AddCategoryState state) {
    state.when(
      initial: () => null,
      adding: () => null,
      addSuccess: (user) {
        _showSuccessSnackbar(context, 'Category added successfully');

        // update the user in the User bloc
        context.read<UserBloc>().add(UpdateUser(user));

        // Fetch categories
        context.read<CategoryBloc>().add(FetchCategories(user: user));

        // Navigate back
        Navigator.pop(context);
      },
      addFailure: (errorMsg) => _showErrorSnackbar(context, errorMsg),
    );
  }

  _showErrorSnackbar(BuildContext context, String errorMsg) {
    // Show error message
    showErrorSnackbar(context, errorMsg);
  }

  _showSuccessSnackbar(BuildContext context, String message) {
    // Show Category added successfully
    showSuccessSnackbar(context, message);
  }
}
