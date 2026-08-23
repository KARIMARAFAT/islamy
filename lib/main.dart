import 'package:flutter/material.dart';
import 'package:islamt/core/app_theme.dart';
import 'package:islamt/features/splash/view/splash_screen.dart';

void main() {
  runApp(IslamyApp());
}

class IslamyApp extends StatelessWidget {
  const IslamyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.apptheme,
      home: SplashScreen(),
    );
  }
}
