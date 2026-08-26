import 'package:flutter/material.dart';
import 'package:islamt/core/app_consts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Image.asset(AppConsts.header, height: 140, width: 300),
    );
  }
}
