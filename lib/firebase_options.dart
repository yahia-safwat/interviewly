// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB7JiwtoYFfWJofkTZtqEHmQSBLiFUKcGg',
    appId: '1:165533696133:web:c550651e7aa93e791b69ec',
    messagingSenderId: '165533696133',
    projectId: 'my-awesome-interviewly',
    authDomain: 'my-awesome-interviewly.firebaseapp.com',
    storageBucket: 'my-awesome-interviewly.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgKdbWLlgfj1S3AkVKz4yFYyPd2EVRxWM',
    appId: '1:165533696133:android:6c244d5ca9c4d0fa1b69ec',
    messagingSenderId: '165533696133',
    projectId: 'my-awesome-interviewly',
    storageBucket: 'my-awesome-interviewly.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUO1ZxiCku9ZQIHMWU4L2b31FiB1u_KLw',
    appId: '1:165533696133:ios:1a531dbb9311b0071b69ec',
    messagingSenderId: '165533696133',
    projectId: 'my-awesome-interviewly',
    storageBucket: 'my-awesome-interviewly.appspot.com',
    androidClientId: '165533696133-2i253rkj31cschfpijo34v48ik1sb70c.apps.googleusercontent.com',
    iosClientId: '165533696133-vpjrfou8ogml7r212u0spdl5o1rjiib8.apps.googleusercontent.com',
    iosBundleId: 'com.example.interviewly',
  );
}