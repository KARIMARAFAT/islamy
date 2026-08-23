import 'package:flutter/material.dart';
import 'package:islamt/core/app_colors.dart';

class AppTheme {
  static ThemeData apptheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blackColor,
      primary: AppColors.blackColor,
      secondary: AppColors.goldColor,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.blackColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.goldColor,
      showSelectedLabels: true,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'Cairo',
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: AppColors.blackColor),
      showUnselectedLabels: false,

      selectedItemColor: Colors.white,
    ),
  );
}
