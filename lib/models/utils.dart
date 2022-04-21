import 'package:flutter/material.dart';
import 'package:news/models/mode.dart';

class Utils {
  static Color mainColor = const Color.fromRGBO(32, 32, 32, 1);
  static Color appBarColor = const Color.fromRGBO(24, 24, 24, 1);
  static Color textColor = Colors.white;
  static Color iconColor = const Color.fromRGBO(100, 100, 100, 1);
  static Color buttonColor = Colors.grey;
  static Mode appMode = Mode.Dark;
  static void convertLightMode() {
    appBarColor = Colors.red;
    mainColor = Colors.white;
    textColor = Colors.black;
    iconColor = const Color.fromRGBO(100, 100, 100, 1);
    appMode = Mode.Light;
    buttonColor = Colors.red;
  }

  static void convertDarkMode() {
    appBarColor = const Color.fromRGBO(24, 24, 24, 1);
    mainColor = const Color.fromRGBO(32, 32, 32, 1);
    textColor = Colors.white;
    iconColor = Colors.white;
    appMode = Mode.Dark;
    buttonColor = Colors.grey;
  }
}
