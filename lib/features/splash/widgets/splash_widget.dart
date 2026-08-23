import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamt/core/app_consts.dart';
import 'package:islamt/features/home/view/main_layer.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/images/ic_splash.svg',
            width: 250,
            height: 250,
          ),
        ),

        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              'assets/images/routegold.png',
              width: 150,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 100,
          right: 0,
          child: Text(
            'Supervised by Mohamed Nabil',
            style: TextStyle(
              fontFamily: AppConsts.family,
              fontSize: 14,
              fontWeight: FontWeight.w100,
              color: Color(0xffDAB98D),
            ),
          ),
        ),
      ],
    );
  }
}
