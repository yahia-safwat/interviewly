import 'package:flutter/material.dart';

// Dark Theme
ThemeData darkTheme = ThemeData.dark().copyWith(
  colorScheme: const ColorScheme.dark(
    primary: Colors.deepPurple, // Primary color
    secondary: Colors.deepOrangeAccent, // Accent color
    brightness: Brightness.dark, // Brightness of the theme
  ),
  scaffoldBackgroundColor: Colors.grey[900], // Background color of the scaffold

  // Customize the appearance of the app bar
  appBarTheme: AppBarTheme(
    color: Colors.grey[900], // Background color of app bar
    elevation: 0, // Elevation of app bar
    iconTheme: const IconThemeData(
      color: Colors.white, // Icon color of app bar
    ),
    titleTextStyle: const TextStyle(
      color: Colors.white, // Title text color of app bar
      fontSize: 20.0, // Font size of title text
      fontWeight: FontWeight.bold, // Font weight of title text
    ),
  ),

  // Customize the appearance of the text
  textTheme: darkTextTheme,

  // Customize the appearance of the TextFormField
  inputDecorationTheme: darkInputDecorationTheme,

  // Customize more theme properties here
  buttonTheme: darkButtonTheme,

// Customize the appearance of the elevated button
  elevatedButtonTheme: darkElevatedButtonTheme,

  // Customize the appearance of the card
  cardTheme: darkCardTheme,

  // Customize more theme properties here
);

// Customize the appearance of the text
const TextTheme darkTextTheme = TextTheme(
  displayLarge: TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  displayMedium: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    color: Colors.white,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    color: Colors.white,
  ),
  titleLarge: TextStyle(
    fontSize: 36,
    fontStyle: FontStyle.italic,
    color: Colors.white,
  ),
  titleMedium: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  titleSmall: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    color: Colors.white,
  ),
  displaySmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
);

// Customize the appearance of the input decoration
final InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
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
final ButtonThemeData darkButtonTheme = ButtonThemeData(
  buttonColor: Colors.deepPurple, // Dark theme button color
  disabledColor: Colors.purple[300], // Dark theme disabled button color
  highlightColor: Colors.deepPurpleAccent, // Dark theme button highlight color
  splashColor: Colors.black, // Dark theme button splash color
  // Add more styling as needed
);

// Customize the appearance of the elevated button
final ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)), // Rounded corners
    backgroundColor: Colors.deepPurple, // Custom button color (dark theme)
    foregroundColor: Colors.white, // Text color for buttons (dark theme)
    textStyle:
        const TextStyle(fontSize: 16.0), // Optional text style customization
  ),
);

// Customize the appearance of the card
final CardTheme darkCardTheme = CardTheme(
  color: Colors.grey[850], // Dark theme card color
  shadowColor: Colors.black87, // Dark theme card shadow color
  elevation: 5, // Dark theme card elevation
  // Add more styling as needed
);
