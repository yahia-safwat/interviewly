import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:interviewly/core/extensions/hive_extension.dart';
import 'package:interviewly/firebase_options.dart';

import 'app.dart';
import 'core/di/injection_container.dart' as di;
import 'core/services/cache/shared_prefs_service.dart';
import 'core/utils/bloc_observer.dart';

Future<void> main() async {
  // Init Flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  // Init Dependencies
  di.init();

  // Init Shared Preferences Service
  await SharedPrefsService.init();

  // Init Hive & Register Adapters for Local Storage.
  await Hive.initFlutter().whenComplete(() {
    HiveExtension.registerAdapter();
  });

  // Init Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Init the BlocObserver
  Bloc.observer = AppBlocObserver();

// Init the application by running the MyApp widget, which encompasses
// all aspects of the Material Design, including themes, localization, and
// other bindings.
  runApp(const MyApp());
}
