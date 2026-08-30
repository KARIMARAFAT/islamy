import 'package:flutter/material.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/features/home/widgets/home_header.dart';

class CustomDesignTab extends StatelessWidget {
  const CustomDesignTab({
    super.key,
    required this.imagePath,
    required this.child,
  });
  final String imagePath;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.blackColor.withValues(alpha: 0.5),
              AppColors.blackColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(spacing: 20, children: [HomeHeader(), child]),
        ),
      ),
    );
  }
}
