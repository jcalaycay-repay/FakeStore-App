import 'package:fakestore/core/theme/data.dart';
import 'package:flutter/material.dart';

class ThemeSingleton {
  ThemeSingleton._internal();

  static final ThemeSingleton _instance = ThemeSingleton._internal();

  static ThemeData? defaultTheme;
  static ThemeData? darkTheme;

  static void init()  {
      defaultTheme = ThemeData.light();
      darkTheme = ThemeData.dark();
  }


}