import 'package:flutter/material.dart';
import 'package:islamt/core/app_colors.dart';
import 'package:islamt/core/app_consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.prefix, this.padding});
  final String? hintText;
  final Widget? prefix;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        cursorColor: AppColors.goldColor,
        style: TextStyle(
          fontSize: 16,
          fontFamily: AppConsts.family,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.blackColor.withValues(alpha: 0.7),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.greyColor,
            fontSize: 16,
            fontFamily: AppConsts.family,
            fontWeight: FontWeight.normal,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: prefix,
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 20,
            minHeight: 20,
          ),
          border: _getBorder(),
          enabledBorder: _getBorder(),
          focusedBorder: _getBorder().copyWith(
            borderSide: BorderSide(color: AppColors.goldColor),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _getBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greyColor),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
