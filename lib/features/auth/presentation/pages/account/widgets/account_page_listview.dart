import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../blocs/delete_user/delete_user_bloc.dart';
import '../../../blocs/user_bloc/user_bloc.dart';
import '../../../blocs/verify_email/verify_email_bloc.dart';
import '../../../widgets/delete_account_dialog.dart';
import 'account_settings_tile.dart';

class AccountPageListView extends StatelessWidget {
  const AccountPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Create instance of userBloc
    final userBloc = context.read<UserBloc>();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            AccountSettingsTile(
              title: 'Edit Profile',
              icon: Icons.person,
              onTap: () {
                // navigate to edit profile screen
                Navigator.pushNamed(context, AppRoutes.editProfile);
              },
            ),
            AccountSettingsTile(
              isVisible: userBloc.isEmailPasswordSignIn,
              title: 'Change Email',
              icon: Icons.email,
              onTap: () {
                // navigate to change email screen
                Navigator.pushNamed(context, AppRoutes.editEmail);
              },
            ),

            AccountSettingsTile(
              isVisible: userBloc.isEmailPasswordSignIn,
              title: 'Change Password',
              icon: Icons.lock,
              onTap: () {
                // navigate to change password screen
                Navigator.pushNamed(context, AppRoutes.editPassword);
              },
            ),
            AccountSettingsTile(
              isVisible: !userBloc.isEmailVerified,
              title: 'Send Verification Email',
              icon: Icons.send,
              onTap: () {
                // Send verification email
                BlocProvider.of<VerifyEmailBloc>(context).add(
                  (const VerifyEmailEvent.sendVerification()),
                );
              },
            ),
            AccountSettingsTile(
              title: 'Delete Account',
              icon: Icons.delete,
              onTap: () {
                showDeleteAccountDialog(
                  context,
                  onConfirmed: () {
                    // Delete user account
                    BlocProvider.of<DeleteUserBloc>(context).add(
                      DeleteUserEvent.deleteUser(
                        context.read<UserBloc>().user!,
                      ),
                    );
                  },
                );
              },
            ),
            // Add more list tiles as needed
          ],
        ),
      ),
    );
  }
}
