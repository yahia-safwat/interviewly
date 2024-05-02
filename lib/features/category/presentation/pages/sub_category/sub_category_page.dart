import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/buttons/add_button.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../question/presentation/blocs/add_question/add_question_bloc.dart';
import '../../../domain/entities/subcategory_entity.dart';
import 'sub_category_page_body.dart';

class SubCategoryPage extends StatelessWidget {
  final SubcategoryEntity subCategory;

  const SubCategoryPage({super.key, required this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subCategory.name),
        actions: [
          AddButton(onPressed: () {
            context.read<AddQuestionBloc>().subCategory = subCategory;

            // Navigate to add question page
            Navigator.pushNamed(context, AppRoutes.addQuestion);
          }),
          const SizedBox(width: 16),
        ],
      ),
      body: const SubCategoryPageBody(),
    );
  }
}
