import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/app/presentation/blocs/app/app_bloc.dart';
import 'core/di/injection_container.dart' as di;
import 'core/routes/app_router.dart';
import 'core/routes/app_routes.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';
import 'features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'features/auth/presentation/blocs/cache_user/cache_user_bloc.dart';
import 'features/auth/presentation/blocs/delete_cached_user/delete_cached_user_bloc.dart';
import 'features/auth/presentation/blocs/delete_user/delete_user_bloc.dart';
import 'features/auth/presentation/blocs/edit_email/edit_email_bloc.dart';
import 'features/auth/presentation/blocs/edit_user/edit_user_bloc.dart';
import 'features/auth/presentation/blocs/edit_password_bloc/edit_password_bloc.dart';
import 'features/auth/presentation/blocs/forget_password/forget_password_bloc.dart';
import 'features/auth/presentation/blocs/user_bloc/user_bloc.dart';
import 'features/auth/presentation/blocs/verify_email/verify_email_bloc.dart';
import 'features/category/presentation/blocs/blocs.dart';
import 'features/category/presentation/blocs/add_subcategory/add_subcategory_bloc.dart';
import 'features/category/presentation/blocs/delete_subcategory/delete_subcategory_bloc.dart';
import 'features/category/presentation/blocs/edit_subcategory/edit_subcategory_bloc.dart';
import 'features/question/presentation/blocs/add_question/add_question_bloc.dart';
import 'features/question/presentation/blocs/delete_question/delete_question_bloc.dart';
import 'features/question/presentation/blocs/edit_question/edit_question_bloc.dart';
import 'features/question/presentation/blocs/question/question_bloc.dart';
import 'features/settings/presentation/blocs/developer/developer_bloc.dart';
import 'features/settings/presentation/blocs/theme/theme_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the AppBloc and trigger the appStarted event
    final appBloc = di.sl<AppBloc>()..add(const AppEvent.startApp());

    return MultiBlocProvider(
      providers: [
        // App Bloc
        BlocProvider(create: (_) => appBloc),

        // Settings Bloc
        BlocProvider(create: (context) => di.sl<ThemeBloc>()),
        BlocProvider(create: (context) => di.sl<DeveloperBloc>()),

        // Authentication Bloc
        BlocProvider(create: (_) => di.sl<AuthBloc>()),

        // User Management Bloc
        BlocProvider(create: (_) => di.sl<UserBloc>()),
        BlocProvider(create: (_) => di.sl<CacheUserBloc>()),
        BlocProvider(create: (_) => di.sl<EditUserBloc>()),
        BlocProvider(create: (_) => di.sl<EditEmailBloc>()),
        BlocProvider(create: (_) => di.sl<DeleteUserBloc>()),
        BlocProvider(create: (_) => di.sl<DeleteCachedUserBloc>()),
        BlocProvider(create: (_) => di.sl<VerifyEmailBloc>()),

        // Password Management Blocs
        BlocProvider(create: (_) => di.sl<EditPasswordBloc>()),
        BlocProvider(create: (_) => di.sl<ForgetPasswordBloc>()),

        // Category Management Blocs
        BlocProvider(create: (_) => di.sl<CategoryBloc>()),
        BlocProvider(create: (_) => di.sl<AddCategoryBloc>()),
        BlocProvider(create: (_) => di.sl<EditCategoryBloc>()),
        BlocProvider(create: (_) => di.sl<DeleteCategoryBloc>()),

        // Subcategory Management Blocs
        BlocProvider(create: (_) => di.sl<AddSubcategoryBloc>()),
        BlocProvider(create: (_) => di.sl<EditSubcategoryBloc>()),
        BlocProvider(create: (_) => di.sl<DeleteSubcategoryBloc>()),

        // Question Management Blocs
        BlocProvider(create: (_) => di.sl<QuestionBloc>()),
        BlocProvider(create: (_) => di.sl<AddQuestionBloc>()),
        BlocProvider(create: (_) => di.sl<EditQuestionBloc>()),
        BlocProvider(create: (_) => di.sl<DeleteQuestionBloc>()),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return state.maybeWhen(
            // ignore: prefer_const_constructors
            appStarted: (_) => AppView(),
            // ignore: prefer_const_constructors
            appRefreshed: (_) => AppView(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

// AppView is the root widget of the application.
class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview Prep',
      theme: context.read<AppBloc>().isDarkMode ? darkTheme : lightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.flowBuilder,
    );
  }
}
