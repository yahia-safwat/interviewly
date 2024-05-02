// ignore_for_file: avoid_print

import '../errors/failures.dart';

/// Maps a [Failure] object to an appropriate error message.
///
/// [failure]: The failure object containing the error message.
String mapFailureToMessage(Failure failure) {
  return failure.message;
}

/// Logs the error message to the console or a logging service.
///
/// [error_message]: The error message to be logged.
void logError(String errorMessage) {
  print('Error: $errorMessage');
  // You can customize this method to log errors to your preferred service
}
