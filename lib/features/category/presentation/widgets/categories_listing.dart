import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/indicators/progress_indicator.dart';
import '../blocs/category/category_bloc.dart';
import 'categories_listing_body.dart';
import 'package:interviewly/features/category/domain/entities/category_entity.dart';

class CategoriesListing extends StatelessWidget {
  const CategoriesListing({super.key});

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

  Widget _buildSuccessView(List<CategoryEntity?> categories) =>
      CategoriesListBody(categories);

  Widget _buildLoadingView() => const AppProgressIndicator();

  Widget _buildInitialView() => const AppProgressIndicator();
}
