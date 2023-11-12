import 'package:flutter/material.dart';
//utils
import 'app_color.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: AppColor.instance.primary,
      scaffoldBackgroundColor: AppColor.instance.primary,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: AppColor.instance.primary,
        ),
        titleSmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w300,
          color: AppColor.instance.primary,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(
          color: AppColor.instance.primary,
          fontSize: 16,
        ),
        labelStyle: TextStyle(
          color: AppColor.instance.black,
          fontSize: 16,
        ),
        hintStyle: TextStyle(
          color: AppColor.instance.black,
          fontSize: 16,
        ),
        helperStyle: TextStyle(
          color: AppColor.instance.primary,
          fontSize: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 20.0,
        ),
        isDense: true,
        filled: true,
        fillColor: AppColor.instance.primary,
        focusColor: AppColor.instance.primary,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppColor.instance.primary,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: AppColor.instance.primary,
          ),
        ),
      ),
    );
  }
}
