import 'package:flutter/material.dart';

Color customGoldColor = Color.fromARGB(255, 248, 221, 65);  // Custom gold color

RadialGradient goldWhiteGradient = RadialGradient(
  colors: [Colors.white, customGoldColor],
  center: Alignment.center,
  radius: 0.8,
);


ThemeData lightTheme = ThemeData(
  // Light theme configuration
  brightness: Brightness.light,
  // Other properties
);

ThemeData darkTheme = ThemeData(
  // Dark theme configuration
  brightness: Brightness.dark,
);
  // Other properties


