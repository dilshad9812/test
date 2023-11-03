import 'package:flutter/material.dart';

class Themeclass {
  //home page light mode
  static LinearGradient dayGradient = LinearGradient(
    colors: [
      Colors.blue.shade200,
      Colors.blue,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  //home page night mode
  static LinearGradient nightGradient = LinearGradient(
    colors: [
      const Color.fromARGB(255, 117, 114, 114),
      const Color.fromARGB(255, 42, 41, 41),
      
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

//theme dataas in light mode
  static ThemeData lightheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.black),
    hintColor: Colors.white,
    textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.black),
        labelLarge: TextStyle(color: Colors.black)),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Colors.white,
        primary: Color.fromARGB(255, 112, 140, 163),
        secondary: Color.fromARGB(255, 150, 185, 213)),
  );

//theme datas in night mode
  static ThemeData darktheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.white),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Colors.black,
        primary: Color.fromARGB(255, 94, 92, 92),
        secondary: Color.fromARGB(255, 172, 171, 171)),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
  );
}
