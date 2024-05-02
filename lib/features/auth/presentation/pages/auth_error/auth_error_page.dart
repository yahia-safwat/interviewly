import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../blocs/auth_bloc/auth_bloc.dart';

class AuthErrorPage extends StatelessWidget {
  const AuthErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error,
              size: 48,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            Text(
              context.read<AuthBloc>().errorMessage!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the login screen
                Navigator.pushNamed(context, AppRoutes.signIn);
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
