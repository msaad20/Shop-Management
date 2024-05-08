import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_management/gen/fonts.gen.dart';
import 'package:shop_management/theme/theme_constants.dart';
import 'package:shop_management/utils/constants/config_constant.dart';

///FIXME: DARK THEME have no changes made
///will require fixing if got support
class ThemeConfig {
  final bool isDarkMode;
  ThemeConfig(this.isDarkMode);

  factory ThemeConfig.light() {
    return ThemeConfig.fromDarkMode(false);
  }
  @Deprecated('not supported')
  factory ThemeConfig.dark() {
    return ThemeConfig.fromDarkMode(true);
  }

  ThemeConfig.fromDarkMode(this.isDarkMode);

  // final ColorScheme _light = M3Color.colorScheme(Brightness.light);
  // final ColorScheme _dark = M3Color.colorScheme(Brightness.dark);

  ThemeData get themeData {
    switch (isDarkMode) {
      case true:
        return _themeDataDark;
      case false:
        return _themeDataLight;
    }
  }

  ThemeData get _themeDataDark {
    return ThemeData(
      brightness: Brightness.dark,
      // colorScheme: _dark,
      scaffoldBackgroundColor: ThemeConstants.backgroundColorDark,
      primaryColor: ThemeConstants.primaryColor,
      fontFamily: FontFamily.quicksand,
      elevatedButtonTheme: DarkThemes.elevatedButtonThemeDataDark,
      floatingActionButtonTheme: DarkThemes.floatingActionButtonThemeData,
      inputDecorationTheme: DarkThemes.inputDecorationThemeDark,
      textButtonTheme: DarkThemes.textButtonThemeDataDark,
      navigationBarTheme: DarkThemes.navigationBarThemeDataDark,
      appBarTheme: DarkThemes.appBarThemeDark,
      popupMenuTheme: DarkThemes.popupMenuThemeDataDark,
      cardTheme: DarkThemes.cardThemeDark,
      cardColor: DarkThemes.cardThemeDark.color,
    );
  }

  ThemeData get _themeDataLight {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: FontFamily.quicksand,
      scaffoldBackgroundColor: ThemeConstants.backgroundColorLight,
      //   colorScheme: _light,
      primaryColor: ThemeConstants.primaryColor,
      elevatedButtonTheme: LightThemes.elevatedButtonThemeDataLight,
      floatingActionButtonTheme: DarkThemes.floatingActionButtonThemeData,
      textButtonTheme: LightThemes.textButtonThemeDataLight,
      navigationBarTheme: LightThemes.navigationBarThemeDataLight,
      appBarTheme: LightThemes.appBarThemeLight,
      popupMenuTheme: LightThemes.popupMenuThemeDataLight,
      dividerColor: ThemeConstants.border,
      cardTheme: LightThemes.cardThemeLight,
      cardColor: LightThemes.cardThemeLight.color,
      iconTheme: const IconThemeData(
        color: ThemeConstants.icon,
      ),
      
    );
  }
}

class DarkThemes {
  DarkThemes._();

  static ElevatedButtonThemeData elevatedButtonThemeDataDark =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: ConfigConstant.padding2),
      backgroundColor: ThemeConstants.primaryColor,
      foregroundColor: Colors.white,
    ),
  );

  static TextButtonThemeData textButtonThemeDataDark = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: ThemeConstants.primaryColor,
    ),
  );

  static FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData(
    backgroundColor: ThemeConstants.primaryColor,
  );

  static InputDecorationTheme inputDecorationThemeDark =
      const InputDecorationTheme(
    fillColor: ThemeConstants.textFieldColorDark,
  );

  static NavigationBarThemeData navigationBarThemeDataDark =
      const NavigationBarThemeData(
    indicatorColor: ThemeConstants.primaryColor,
    backgroundColor: ThemeConstants.navigationBarColorDark,
  );

  static AppBarTheme appBarThemeDark = const AppBarTheme(
    backgroundColor: ThemeConstants.primaryColor,
  );

  static PopupMenuThemeData popupMenuThemeDataDark = const PopupMenuThemeData(
    color: ThemeConstants.backgroundColorDark,
  );

  static CardTheme cardThemeDark = const CardTheme(
    color: ThemeConstants.cardColorDark,
  );
}

class LightThemes {
  LightThemes._();

  static ElevatedButtonThemeData elevatedButtonThemeDataLight =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: ConfigConstant.padding2),
      backgroundColor: ThemeConstants.primaryColor,
      foregroundColor: Colors.white,
    ),
  );

  static InputDecorationTheme inputDecorationThemeLight =
      const InputDecorationTheme(
    labelStyle: TextStyle(
      color: ThemeConstants.primaryColor,
      backgroundColor: ThemeConstants.textFieldColorLight,
    ),
  );

  static TextButtonThemeData textButtonThemeDataLight = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: ThemeConstants.primaryColor,
    ),
  );

  static NavigationBarThemeData navigationBarThemeDataLight =
      const NavigationBarThemeData(
    indicatorColor: ThemeConstants.primaryColor,
    backgroundColor: ThemeConstants.navigationBarColorLight,
  );

  static AppBarTheme appBarThemeLight = const AppBarTheme();

  static PopupMenuThemeData popupMenuThemeDataLight = const PopupMenuThemeData(
    color: ThemeConstants.backgroundColorLight,
  );

  static CardTheme cardThemeLight = const CardTheme(
    color: ThemeConstants.cardColorLight,
  );
}
