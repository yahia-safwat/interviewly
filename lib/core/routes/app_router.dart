import 'package:flutter/material.dart';

import '../../common/app/presentation/pages/flow_builder/flow_builder_page.dart';
import '../../features/auth/presentation/pages/edit_email/edit_email_page.dart';
import '../../features/auth/presentation/pages/edit_password/edit_password_page.dart';
import '../../features/auth/presentation/pages/edit_profile/edit_profile_page.dart';
import '../../features/auth/presentation/pages/email_sent/email_sent_page.dart';
import '../../features/auth/presentation/pages/pages.dart';
import '../../features/category/domain/entities/category_entity.dart';
import '../../features/category/domain/entities/subcategory_entity.dart';
import '../../features/category/presentation/pages/add_subcategory/add_subcategory_page.dart';
import '../../features/category/presentation/pages/sub_category/sub_category_page.dart';
import '../../features/dashboard/presentation/pages/dashboard/dashboard_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/question/domain/entities/question_entity.dart';

import '../../features/question/presentation/pages/pages.dart';
import '../../features/category/presentation/pages/pages.dart';

import '../../features/settings/presentation/pages/settings_page.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.flowBuilder:
        return MaterialPageRoute(builder: (_) => const FlowBuilderPage());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());

      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());

      case AppRoutes.authError:
        return MaterialPageRoute(builder: (_) => const AuthErrorPage());

      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordPage());

      case AppRoutes.emailSent:
        final view = settings.arguments as EmailViewType;
        return MaterialPageRoute(builder: (_) => EmailSentPage(viewType: view));

      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());

      case AppRoutes.account:
        return MaterialPageRoute(builder: (_) => const AccountPage());

      case AppRoutes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case AppRoutes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case AppRoutes.addQuestion:
        return MaterialPageRoute(builder: (_) => const AddQuestionPage());

      case AppRoutes.question:
        // Extract question data from settings.arguments and pass it to the page
        final args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => QuestionPage(question: args as QuestionEntity));
      case AppRoutes.editQuestion:
        // Extract question data from settings.arguments and pass it to the page
        return MaterialPageRoute(builder: (_) => const EditQuestionPage());
      case AppRoutes.addCategory:
        return MaterialPageRoute(builder: (_) => const AddCategoryPage());

      case AppRoutes.addSubCategory:
        return MaterialPageRoute(builder: (_) => const AddSubCategoryPage());

      case AppRoutes.editProfile:
        return MaterialPageRoute(builder: (_) => const EditProfilePage());
      case AppRoutes.editEmail:
        return MaterialPageRoute(builder: (_) => const EditEmailPage());

      case AppRoutes.editPassword:
        return MaterialPageRoute(builder: (_) => const EditPasswordPage());

      case AppRoutes.editCategory:
        // Extract category data from settings.arguments and pass it to the page
        final args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => EditCategoryPage(category: args as CategoryEntity));
      case AppRoutes.category:
        final args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => CategoryPage(category: args as CategoryEntity));
      case AppRoutes.subCategory:
        final args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) =>
                SubCategoryPage(subCategory: args as SubcategoryEntity));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}'))));
    }
  }

  void navigateTo(BuildContext context, String routeName, {dynamic arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }
}
