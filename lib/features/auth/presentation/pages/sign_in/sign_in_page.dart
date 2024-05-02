import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/injection_container.dart' as di;
import '../../blocs/sign_in_with_email_bloc/sign_in_with_email_bloc.dart';
import '../../blocs/sign_in_with_google/sign_in_with_google_bloc.dart';
import 'widgets/sign_in_body.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Sign In')),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => di.sl<SignInWithEmailBloc>()),
          BlocProvider(create: (_) => di.sl<SignInWithGoogleBloc>()),
        ],
        child: const SignInBody(),
      ),
    );
  }
}
