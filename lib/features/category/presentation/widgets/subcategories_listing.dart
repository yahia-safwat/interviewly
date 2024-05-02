import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/category_entity.dart';
import '../blocs/category/category_bloc.dart';
import '../blocs/delete_subcategory/delete_subcategory_bloc.dart';
import '../blocs/edit_subcategory/edit_subcategory_bloc.dart';
import 'subcategories_list_view.dart';

class SubcategoriesListing extends StatelessWidget {
  const SubcategoriesListing({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<EditSubcategoryBloc, EditSubcategoryState>(
          listener: _handleEditState,
        ),
        BlocListener<DeleteSubcategoryBloc, DeleteSubcategoryState>(
          listener: _handleDeleteState,
        )
      ],
      child: SubcategoriesListView(category: category),
    );
  }

  void _handleEditState(BuildContext context, EditSubcategoryState state) {
    state.when(
      initial: () => null,
      editing: () => null,
      editSuccess: (user) {
        // show success snackbar
        showSuccessSnackbar(context, 'Successfully edited subcategory');

        // update the user in the User bloc
        context.read<UserBloc>().add(UpdateUser(user));

        // Fetch categories
        context.read<CategoryBloc>().add(FetchCategories(user: user));
      },
      editFailure: (errorMessage) {
        // show error snackbar
        showErrorSnackbar(context, errorMessage);
      },
    );
  }

  void _handleDeleteState(BuildContext context, DeleteSubcategoryState state) {
    state.when(
        initial: () => null,
        deleting: () => null,
        deleteSuccess: (user) {
          // show success snackbar
          showSuccessSnackbar(context, 'Successfully deleted subcategory');

          // update the user in the User bloc
          context.read<UserBloc>().add(UpdateUser(user));

          // Fetch categories
          context.read<CategoryBloc>().add(FetchCategories(user: user));
        },
        deleteFailure: (errorMessage) {
          // show error snackbar
          showErrorSnackbar(context, errorMessage);
        });
  }
}
