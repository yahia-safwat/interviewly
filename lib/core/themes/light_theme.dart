import 'package:flutter/material.dart';

// Light Theme
ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light(
    primary: Colors.blue, // Primary color for light theme
    secondary: Colors.orangeAccent, // Accent color for light theme
    brightness: Brightness.light, // Brightness of the theme
  ),
  scaffoldBackgroundColor:
      Colors.white, // Background color of the scaffold for light theme

  // Customize the appearance of the app bar for light theme
  appBarTheme: const AppBarTheme(
    color: Colors.white, // Background color of app bar for light theme
    elevation: 0, // Elevation of app bar
    iconTheme: IconThemeData(
      color: Colors.black, // Icon color of app bar for light theme
    ),
    titleTextStyle: TextStyle(
      color: Colors.black, // Title text color of app bar for light theme
      fontSize: 20.0, // Font size of title text
      fontWeight: FontWeight.bold, // Font weight of title text
    ),
  ),

  // Customize the appearance of the text for light theme
  textTheme: lightTextTheme,

  // Customize the appearance of the TextFormField
  inputDecorationTheme: lightInputDecorationTheme,

  // Customize the appearance of the button
  buttonTheme: lightButtonTheme,

  // Customize the appearance of the elevated button
  elevatedButtonTheme: lightElevatedButtonTheme,

  // Customize the appearance of the card
  cardTheme: lightCardTheme,

  // Customize more theme properties here for light theme
);

// Customize the appearance of the text
const TextTheme lightTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  displayMedium: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    color: Colors.black,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    color: Colors.black,
  ),
  titleLarge: TextStyle(
    fontSize: 36,
    fontStyle: FontStyle.italic,
    color: Colors.black,
  ),
  titleMedium: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  titleSmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    color: Colors.black,
  ),
  displaySmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
);

// Customize the appearance of the input decoration
final InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: Colors.blue),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: Colors.orangeAccent),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: Colors.red),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: const BorderSide(color: Colors.red),
  ),
  labelStyle: const TextStyle(color: Colors.blue),
  hintStyle: const TextStyle(color: Colors.grey),
  errorStyle: const TextStyle(color: Colors.red),
  // Add more styling as needed
);

// Customize the appearance of the button
const ButtonThemeData lightButtonTheme = ButtonThemeData(
  buttonColor: Colors.blue, // Light theme button color
  disabledColor: Colors.blueGrey, // Light theme disabled button color
  highlightColor: Colors.lightBlueAccent, // Light theme button highlight color
  splashColor: Colors.white, // Light theme button splash color
  // Add more styling as needed
);

// Customize the appearance of the elevated button
final ElevatedButtonThemeData lightElevatedButtonTheme =
    ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)), // Rounded corners
    backgroundColor: Colors.blue, // Primary color for buttons (light theme)
    foregroundColor: Colors.white, // Text color for buttons (light theme)
    textStyle:
        const TextStyle(fontSize: 16.0), // Optional text style customization
  ),
);

// Customize the appearance of the card
const CardTheme lightCardTheme = CardTheme(
  color: Colors.white, // Light theme card color
  shadowColor: Colors.grey, // Light theme card shadow color
  elevation: 5, // Light theme card elevation
  // Add more styling as needed
);
