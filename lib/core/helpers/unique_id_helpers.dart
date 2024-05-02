import 'package:uuid/uuid.dart';

/// Generate a unique id based on length
String generateUniqueId(int length) {
  const uuid = Uuid();

  // Take the first characters based on length
  final String id = uuid.v4().substring(0, length);
  return id;
}
