// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../common/app/presentation/widgets/buttons/add_button.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../domain/entities/category_entity.dart';
import 'widgets/category_page_body.dart';

class CategoryPage extends StatelessWidget {
  final CategoryEntity category;

  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return CategoryBody(category: category);
  }
}

class CategoryBody extends StatelessWidget {
  const CategoryBody({
    super.key,
    required this.category,
  });

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        actions: [
          AddButton(onPressed: () {
            // Navigate to add subcategory page
            Navigator.pushNamed(context, AppRoutes.addSubCategory);
          }),
          const SizedBox(width: 16),
        ],
      ),
      body: CategoryPageBody(category: category),
    );
  }
}
