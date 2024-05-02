import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection_container.dart' as di;
import '../../../auth/presentation/blocs/sign_out_bloc/sign_out_bloc.dart';
import '../widgets/settings_body.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<SignOutBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: const SettingsBody(),
      ),
    );
  }
}
