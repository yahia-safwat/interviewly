import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/blocs/app/app_bloc.dart';
import '../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/blocs/delete_cached_user/delete_cached_user_bloc.dart';
import '../../../auth/presentation/blocs/sign_out_bloc/sign_out_bloc.dart';
import '../blocs/developer/developer_bloc.dart';
import '../blocs/theme/theme_bloc.dart';
import 'section_title.dart';
import 'settings_tile.dart';
import 'toggle_tile.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 16.0),
        const SectionTitle('General'),
        _buildGeneralSection(context),
        const SizedBox(height: 24.0),
        const SectionTitle('Appearance'),
        _buildAppearanceSection(context),
        const SizedBox(height: 24.0),
        const SectionTitle('Developer'),
        _buildDeveloperSection(context),
      ],
    );
  }
}

Widget _buildGeneralSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SettingsTile(
        title: 'Account',
        onTap: () {
          // Navigate to account settings page
          Navigator.pushNamed(context, AppRoutes.account);
        },
      ),
      SettingsTile(
        title: 'Privacy',
        onTap: () {
          // Navigate to privacy settings page
        },
      ),
      SettingsTile(
        title: 'About',
        onTap: () {
          // Navigate to about page
        },
      ),
      BlocListener<SignOutBloc, SignOutState>(
        listener: (context, state) => _handleSignOutState(context, state),
        child: SettingsTile(
            title: 'Logout',
            onTap: () {
              context.read<SignOutBloc>().add(SignOutPressed());
            }),
      ),
      const Divider(),
    ],
  );
}

Widget _buildAppearanceSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      BlocConsumer<ThemeBloc, ThemeState>(
        listener: _handleThemeState,
        builder: (context, state) {
          final themeBloc = context.read<ThemeBloc>();
          return ToggleTile(
            title: 'Dark Mode',
            value: context.read<AppBloc>().isDarkMode,
            onChanged: (value) {
              // Toggle Theme Mode & update the Prefs data
              themeBloc.add(ThemeEvent.toggleThemeMode(value: value));
            },
          );
        },
      ),
      const Divider(),
    ],
  );
}

void _handleThemeState(BuildContext context, ThemeState state) {
  state.maybeWhen(
    orElse: () {},
    themeChanged: (_) {
      // Refresh the app with the updated prefs data
      context.read<AppBloc>().add(const AppEvent.refreshApp());
    },
  );
}

Widget _buildDeveloperSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Add developer-related settings here
      BlocConsumer<DeveloperBloc, DeveloperState>(
        listener: _handleDeveloperState,
        builder: (context, state) {
          final developerBloc = context.read<DeveloperBloc>();
          return ToggleTile(
            title: 'Developer Mode',
            value: context.read<AppBloc>().isDeveloperMode,
            onChanged: (value) {
              // Toggle Developer Mode & update the Prefs data
              developerBloc
                  .add(DeveloperEvent.toggleDeveloperMode(value: value));
            },
          );
        },
      ),
      const Divider(),
    ],
  );
}

void _handleDeveloperState(BuildContext context, DeveloperState state) {
  state.maybeWhen(
    orElse: () {},
    developerModeChanged: (_) {
      // Refresh the app with the updated prefs data
      context.read<AppBloc>().add(const AppEvent.refreshApp());
    },
  );
}

void _handleSignOutState(BuildContext context, SignOutState state) {
  if (state is SignOutSuccess) {
    // delete the cached user
    context
        .read<DeleteCachedUserBloc>()
        .add(const DeleteCachedUserEvent.deleteCachedUser());

    // Navigate to the home screen
    _navigateToSignInScreen(context);
  } else if (state is SignOutError) {
    showErrorSnackbar(context, state.errorMessage);
  }
}

void _navigateToSignInScreen(BuildContext context) {
  Navigator.pushNamedAndRemoveUntil(
      context, AppRoutes.signIn, (route) => false);
}
