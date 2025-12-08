import 'package:fakestore/core/theme/data/textTheme.dart';
import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  ThemeManager._internal();

  // ignore: unused_field
  static final ThemeManager _instance = ThemeManager._internal();

  static ThemeData? _currentTheme;

  static ThemeData? _defaultTheme;
  static ThemeData? _darkTheme;

  /// Initializes theme data
  static void init() {
    _defaultTheme = ThemeData.light(useMaterial3: true).copyWith(
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
      ),
      textTheme: lightTextTheme,
    );
    _darkTheme = ThemeData.dark(
      useMaterial3: true,
    ).copyWith(textTheme: darkTextTheme);

    _currentTheme = _defaultTheme;

    // _instance.notifyListeners();
  }

  /// Public accessor
  static ThemeData get theme => _currentTheme!;

  /// Theme switcher ([dark] or [light])
  static void toggleTheme() {
    final isDark = _currentTheme!.brightness == Brightness.dark;
    _currentTheme = isDark ? _darkTheme : _defaultTheme;

    print(_currentTheme!.brightness);
    _instance.notifyListeners();
  }

  //? Core Theme Data Getters
  static ColorScheme get colorScheme => _currentTheme!.colorScheme;
  static TextTheme get textTheme => _currentTheme!.textTheme;
  static Typography get typography => _currentTheme!.typography;
  static bool get applyElevationOverlayColor =>
      _currentTheme!.applyElevationOverlayColor;
  static VisualDensity get visualDensity => _currentTheme!.visualDensity;
  static TargetPlatform get platform => _currentTheme!.platform;
  static bool get useMaterial3 => _currentTheme!.useMaterial3;

  //? Colors
  static Color get primaryColor => _currentTheme!.primaryColor;
  static Color get primaryColorLight => _currentTheme!.primaryColorLight;
  static Color get primaryColorDark => _currentTheme!.primaryColorDark;
  static Color get focusColor => _currentTheme!.focusColor;
  static Color get hoverColor => _currentTheme!.hoverColor;
  static Color get shadowColor => _currentTheme!.shadowColor;
  static Color get canvasColor => _currentTheme!.canvasColor;
  static Color get scaffoldBackgroundColor =>
      _currentTheme!.scaffoldBackgroundColor;
  static Color get cardColor => _currentTheme!.cardColor;
  static Color get dividerColor => _currentTheme!.dividerColor;
  static Color get highlightColor => _currentTheme!.highlightColor;
  static Color get splashColor => _currentTheme!.splashColor;
  static Color get unselectedWidgetColor =>
      _currentTheme!.unselectedWidgetColor;
  static Color get disabledColor => _currentTheme!.disabledColor;
  static Color get secondaryHeaderColor => _currentTheme!.secondaryHeaderColor;
  static Color get backgroundColor => _currentTheme!.scaffoldBackgroundColor;
  static Color get hintColor => _currentTheme!.hintColor;

  //? Theme Data
  // static BottomAppBarThemeData get bottomAppBarColor =>
  //     _currentTheme!.bottomAppBarTheme;
  // static DialogThemeData get dialogBackgroundColor =>
  //     _currentTheme!.dialogTheme;
  // static TabBarThemeData get indicatorColor => _currentTheme!.tabBarTheme;
  // static DrawerThemeData get drawerBackgroundColor =>
  //     _currentTheme!.drawerTheme;

  static AppBarThemeData get appBarTheme => _currentTheme!.appBarTheme;
  static FloatingActionButtonThemeData get floatingActionButtonTheme =>
      _currentTheme!.floatingActionButtonTheme;
  static SnackBarThemeData get snackBarTheme => _currentTheme!.snackBarTheme;
  static BottomAppBarThemeData get bottomAppBarTheme =>
      _currentTheme!.bottomAppBarTheme;
  static BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      _currentTheme!.bottomNavigationBarTheme;
  static BottomSheetThemeData get bottomSheetTheme =>
      _currentTheme!.bottomSheetTheme;
  static TabBarThemeData get tabBarTheme => _currentTheme!.tabBarTheme;
  static TooltipThemeData get tooltipTheme => _currentTheme!.tooltipTheme;
  static ListTileThemeData get listTileTheme => _currentTheme!.listTileTheme;
  static CardThemeData get cardTheme => _currentTheme!.cardTheme;
  static ChipThemeData get chipTheme => _currentTheme!.chipTheme;
  static CheckboxThemeData get checkboxTheme => _currentTheme!.checkboxTheme;
  static RadioThemeData get radioTheme => _currentTheme!.radioTheme;
  static SwitchThemeData get switchTheme => _currentTheme!.switchTheme;
  static ProgressIndicatorThemeData get progressIndicatorTheme =>
      _currentTheme!.progressIndicatorTheme;
  static SliderThemeData get sliderTheme => _currentTheme!.sliderTheme;
  static ExpansionTileThemeData get expansionTileTheme =>
      _currentTheme!.expansionTileTheme;
  static IconThemeData get iconTheme => _currentTheme!.iconTheme;
  static IconThemeData get primaryIconTheme => _currentTheme!.primaryIconTheme;
  static DrawerThemeData get drawerTheme => _currentTheme!.drawerTheme;
  static NavigationRailThemeData get navigationRailTheme =>
      _currentTheme!.navigationRailTheme;
  static NavigationBarThemeData get navigationBarTheme =>
      _currentTheme!.navigationBarTheme;
  static NavigationDrawerThemeData get navigationDrawerTheme =>
      _currentTheme!.navigationDrawerTheme;
  static DividerThemeData get dividerTheme => _currentTheme!.dividerTheme;
  static PopupMenuThemeData get popupMenuTheme => _currentTheme!.popupMenuTheme;
  static DialogThemeData get dialogTheme => _currentTheme!.dialogTheme;
  static MenuBarThemeData get menuBarTheme => _currentTheme!.menuBarTheme;
  static MenuButtonThemeData get menuButtonTheme =>
      _currentTheme!.menuButtonTheme;
  static MenuThemeData get menuTheme => _currentTheme!.menuTheme;
  static BadgeThemeData get badgeTheme => _currentTheme!.badgeTheme;

  static InputDecorationThemeData get inputDecorationTheme => _currentTheme!.inputDecorationTheme;
  static TextSelectionThemeData get textSelectionTheme => _currentTheme!.textSelectionTheme;
  static TextButtonThemeData get textButtonTheme => _currentTheme!.textButtonTheme;
  static ElevatedButtonThemeData get elevatedButtonTheme => _currentTheme!.elevatedButtonTheme;
  static OutlinedButtonThemeData get outlinedButtonTheme => _currentTheme!.outlinedButtonTheme;
  static ButtonThemeData get buttonTheme => _currentTheme!.buttonTheme; // legacy
  static DatePickerThemeData get datePickerTheme => _currentTheme!.datePickerTheme;
  static TimePickerThemeData get timePickerTheme => _currentTheme!.timePickerTheme;

  static ScrollbarThemeData get scrollbarTheme => _currentTheme!.scrollbarTheme;
  static PageTransitionsTheme get pageTransitionsTheme => _currentTheme!.pageTransitionsTheme;
  static ActionIconThemeData get actionIconTheme => _currentTheme!.actionIconTheme!;
  static InteractiveInkFeatureFactory? get splashFactory => _currentTheme!.splashFactory;

  static MaterialTapTargetSize get materialTapTargetSize => _currentTheme!.materialTapTargetSize;
static MaterialBannerThemeData get bannerTheme => _currentTheme!.bannerTheme;
static IconThemeData get iconButtonTheme => _currentTheme!.iconTheme;



}
