import 'package:flutter/material.dart';

final defaultThemeData = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light, 
    primary: Colors.blue.shade400, 
    onPrimary: Colors.white, 
    secondary: Colors.blueGrey.shade400, 
    onSecondary: Colors.white70, 
    error: Colors.red.shade400, 
    onError: Colors.black, 
    surface: Colors.white, 
    onSurface: Color.from(alpha: 1, red: 24, green: 26, blue: 42)
  ),
);