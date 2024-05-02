// ignore_for_file: avoid_print

import 'package:firebase_messaging/firebase_messaging.dart';

/// Service class for Firebase Cloud Messaging operations.
class FBNotificationService {
  final FirebaseMessaging _firebaseMessaging;

  FBNotificationService(this._firebaseMessaging);

  /// Sets up notification handling.
  // Future<void> setupNotificationHandling() async {
  //   _firebaseMessaging.configure(
  //     onMessage: (Map<String, dynamic> message) async {
  //       print('onMessage: $message');
  //     },
  //     onLaunch: (Map<String, dynamic> message) async {
  //       print('onLaunch: $message');
  //     },
  //     onResume: (Map<String, dynamic> message) async {
  //       print('onResume: $message');
  //     },
  //   );
  // }

  /// Subscribes to a topic.
  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  /// Unsubscribes from a topic.
  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }
}
