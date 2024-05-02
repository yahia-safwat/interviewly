import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/category_entity.dart';
import '../blocs/delete_subcategory/delete_subcategory_bloc.dart';
import 'subcategory_tile.dart';

class SubcategoriesListView extends StatelessWidget {
  const SubcategoriesListView({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    // Sort subcategories by createdAt in ascending order
    category.subcategories.sort((a, b) => a.createdAt.compareTo(b.createdAt));

    return ListView.builder(
      itemCount: category.subcategories.length,
      itemBuilder: (context, index) {
        final subcategory = category.subcategories[index];
        return SubCategoryTile(
          subcategory: subcategory,
          onRemove: () {
            // add remove event
            context
                .read<DeleteSubcategoryBloc>()
                .add(DeleteSubcategoryEvent.deleteSubcategory(
                  context.read<UserBloc>().user!,
                  subcategory,
                ));
          },
        );
      },
    );
  }
}
