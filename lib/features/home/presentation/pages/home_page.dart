import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/buttons/add_button.dart';
import '../../../../common/app/presentation/widgets/drawers/app_drawer/app_drawer.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/blocs/cache_user/cache_user_bloc.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: _handleUserState,
      child: Scaffold(
        drawer: const AppDrawer(),
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            AddButton(onPressed: () {
              // Navigate to add category page
              Navigator.pushNamed(context, AppRoutes.addCategory);
            }),
            const SizedBox(width: 16),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: HomePageBody(),
        ),
      ),
    );
  }

  _handleUserState(BuildContext context, UserState state) {
    state.whenOrNull(
      updateSuccess: (user) {
        // Cache the user to local storage
        context
            .read<CacheUserBloc>()
            .add(CacheUserEvent.cacheUser(user: user!));
      },
    );
  }
}
