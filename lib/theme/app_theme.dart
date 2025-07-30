import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_color.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 18, 13, 19),
    appBarTheme: AppBarTheme(backgroundColor: AppColors.grey900),
    elevatedButtonTheme: _elevatedButtonTheme(isDark: true),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: Colors.deepPurple,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.darkBackgroundColor,
      onSurface: AppColors.grey100,
    ),
  );

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.grey100,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.grey200),
    elevatedButtonTheme: _elevatedButtonTheme(isDark: false),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      secondary: Colors.deepPurple,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black87,
    ),
  );

  /// Custom button style with hover/pressed effects for web and simplicity for mobile
  static ElevatedButtonThemeData _elevatedButtonTheme({required bool isDark}) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.resolveWith<double>(
          (states) => states.contains(WidgetState.pressed) ? 2 : 0,
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.primaryColor.withOpacity(0.85);
          }
          if (states.contains(WidgetState.pressed)) {
            return AppColors.primaryColor.withOpacity(0.75);
          }
          return AppColors.primaryColor;
        }),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
