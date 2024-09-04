import 'package:flutter/material.dart';

//---light and dark elevated Button

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  ///Light theme

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 141, 187, 143),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 50, 129, 53),
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}
