
import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  AppColor._();

  static AppColor get instance {
    _instance ??= AppColor._();
    return _instance!;
  }

  Color get primary => Colors.white;
  Color get secondary => const Color(0xff44BD6E);
  Color get black => Color(0xFF212837);
  Color get gradien1 => Color(0xFF1C5566);
  Color get gradien2 => Color(0xFF26757A);
  Color get gradien3 => Color(0xFF29918A);
  Color get vermelho =>  Colors.red;
}