import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/app/presentation/blocs/app/app_bloc.dart';
import 'dashboard_button.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (context.read<AppBloc>().isDeveloperMode)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Developer Mode:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                DashboardButton(
                  text: 'Add Questions from JSON',
                  onPressed: () {
                    // Navigate to AddQuestionsFromJsonPage
                  },
                ),
                const SizedBox(height: 10),
                DashboardButton(
                  text: 'Add Categories from JSON',
                  onPressed: () {
                    // Navigate to AddCategoriesFromJsonPage
                  },
                ),
                // Add more buttons for other developer mode features if needed
              ],
            ),
        ],
      ),
    );
  }
}
