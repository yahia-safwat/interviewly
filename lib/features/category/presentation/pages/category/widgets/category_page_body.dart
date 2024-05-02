import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/app/presentation/widgets/indicators/progress_indicator.dart';
import '../../../../domain/entities/category_entity.dart';
import '../../../blocs/category/category_bloc.dart';
import '../../../widgets/subcategories_listing.dart';

class CategoryPageBody extends StatelessWidget {
  const CategoryPageBody({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.when(
          initial: () => _buildInitialView(),
          fetching: () => _buildLoadingView(),
          fetchSuccess: (categories) => _buildSuccessView(categories),
          fetchError: (errorMessage) => _buildFailureView(errorMessage),
        );
      },
    );
  }

  Widget _buildFailureView(String errorMessage) {
    return Center(
      child: Text('Failed to load categories: $errorMessage'),
    );
  }

  Widget _buildSuccessView(List<CategoryEntity?> categories) {
    // Get the updated category
    CategoryEntity? updatedCategory = _getUpdatedCategory(categories, category);
    return SubcategoriesListing(category: updatedCategory!);
  }

  _getUpdatedCategory(
      List<CategoryEntity?> categories, CategoryEntity category) {
    // Find the updated category from the list based on the old category's ID
    CategoryEntity? updatedCategory =
        categories.firstWhere((cat) => cat?.id == category.id);
    return updatedCategory;
  }

  _buildLoadingView() => const AppProgressIndicator();

  _buildInitialView() => const AppProgressIndicator();
}
