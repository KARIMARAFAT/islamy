import 'package:flutter/material.dart';
import 'package:islamt/core/app_theme.dart';
import 'package:islamt/features/splash/view/splash_screen.dart';
import 'package:islamt/features/home/view/main_layer.dart';
import 'package:islamt/features/home/tabs/quran_tab/sura_details_page.dart';

void main() {
  runApp(IslamyApp());
}

class IslamyApp extends StatelessWidget {
  const IslamyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
                HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsPage.routeName: (context) => SuraDetailsPage()
        },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.apptheme,
      home: SplashScreen(),
    );
  }
}
