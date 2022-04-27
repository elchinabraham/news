import 'package:flutter/material.dart';
import 'package:news/models/custom_color.dart';
import 'package:news/models/mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static Color mainColor = const Color.fromRGBO(32, 32, 32, 1);
  static Color appBarColor = const Color.fromRGBO(24, 24, 24, 1);
  static Color textColor = Colors.white;
  static Color iconColor = Colors.white;
  static Color buttonColor = Colors.grey;
  static Mode appMode = Mode.Dark;

  static Future<void> getSystemMode() async {
    final prefs = await SharedPreferences.getInstance();
    final systemMode = prefs.getString('mode');
    print(systemMode);
    if (systemMode == null || systemMode == 'l' || systemMode == '0') {
      convertLightMode();
    } else {
      convertDarkMode();
    }
  }

  static Future<void> getAppBarColor() async {
    final prefs = await SharedPreferences.getInstance();
    final c = prefs.getString('appBarColor');
    if (c != null) {
      switch (c) {
        case "b":
          appBarColor = Colors.blue;
          break;
        case "r":
          appBarColor = Colors.red;
          break;
        case "p":
          appBarColor = Colors.purple;
          break;
        case "o":
          appBarColor = Colors.orange;
          break;
      }
    } else {
      if (appMode == Mode.Light) {
        appBarColor = Colors.red;
      } else {
        appBarColor = const Color.fromRGBO(24, 24, 24, 1);
      }
    }
  }

  static Future<void> changeAppBarColor(CustomColor customColor) async {
    switch (customColor) {
      case CustomColor.Blue:
        appBarColor = Colors.blue;
        break;
      case CustomColor.Red:
        appBarColor = Colors.red;
        break;
      case CustomColor.Purple:
        appBarColor = Colors.purple;
        break;
      case CustomColor.Orange:
        appBarColor = Colors.orange;
        break;
    }
  }

  static Future<void> saveAppBarColor(CustomColor customColor) async {
    final prefs = await SharedPreferences.getInstance();
    String _color;
    switch (customColor) {
      case CustomColor.Blue:
        _color = "b";
        break;
      case CustomColor.Red:
        _color = "r";
        break;
      case CustomColor.Purple:
        _color = "p";
        break;
      case CustomColor.Orange:
        _color = "o";
        break;
    }
    prefs.setString('appBarColor', _color);
  }

  static Future<void> convertLightMode() async {
    appBarColor = Colors.red;
    mainColor = Colors.white;
    textColor = Colors.black;
    iconColor = const Color.fromRGBO(100, 100, 100, 1);
    appMode = Mode.Light;
    buttonColor = appBarColor;
  }

  static Future<void> convertDarkMode() async {
    appBarColor = const Color.fromRGBO(24, 24, 24, 1);
    mainColor = const Color.fromRGBO(32, 32, 32, 1);
    textColor = Colors.white;
    iconColor = Colors.white;
    appMode = Mode.Dark;
    buttonColor = Colors.grey;
  }

  static Future<void> saveSystemMode() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('mode', appMode == Mode.Dark ? 'd' : 'l');
    print(appMode);
  }
}
