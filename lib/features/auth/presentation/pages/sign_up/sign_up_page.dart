import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/injection_container.dart' as di;
import '../../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../../blocs/verify_email/verify_email_bloc.dart';
import 'widgets/sign_up_body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => di.sl<SignUpBloc>()),
          BlocProvider(create: (_) => di.sl<VerifyEmailBloc>()),
        ],
        child: const SignUpBody(),
      ),

      // BlocProvider(
      //   create: (_) => di.sl<SignUpBloc>(), // Initialize SignUpBloc
      //   child: , // Display SignUpBody
      // ),
    );
  }
}
