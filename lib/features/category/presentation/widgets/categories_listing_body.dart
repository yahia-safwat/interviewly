import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/category_entity.dart';
import '../blocs/delete_category/delete_category_bloc.dart';
import '../blocs/category/category_bloc.dart';
import 'categories_grid_view.dart';

class CategoriesListBody extends StatelessWidget {
  final List<CategoryEntity?> categories;

  const CategoriesListBody(this.categories, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteCategoryBloc, DeleteCategoryState>(
      listener: _handleDeleteState,
      child: CategoriesGridView(categories: categories),
    );
  }

  void _handleDeleteState(BuildContext context, DeleteCategoryState state) {
    switch (state) {
      case DeleteCategoryInitial():
        null;
      case CategoryDeleting():
        null;
      case CategoryDeleteSuccess():
        {
          // show success snackbar
          showSuccessSnackbar(context, 'Successfully deleted category');

          // update the user in the User bloc
          context.read<UserBloc>().add(UpdateUser(state.user));

          // Fetch categories
          context.read<CategoryBloc>().add(FetchCategories(user: state.user));
        }
      case CategoryDeleteFailure():
        {
          // show error snackbar
          showErrorSnackbar(context, state.errorMessage);
        }
    }
  }
}
