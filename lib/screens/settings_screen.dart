// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news/models/custom_color.dart';
import 'package:news/models/mode.dart';
import 'package:news/models/screens.dart';
import 'package:news/models/utils.dart';
import 'package:news/widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = Utils.appMode == Mode.Dark;
  CustomColor? selectedColor = CustomColor.Red;
  void _changeAppBarColor(CustomColor customColor) {
    if (!darkMode) {
      Utils.convertLightMode();
    } else {
      Utils.convertDarkMode();
    }

    switch (customColor) {
      case CustomColor.Blue:
        Utils.appBarColor = Colors.blue;
        break;
      case CustomColor.Red:
        Utils.appBarColor = Colors.red;
        break;
      case CustomColor.Purple:
        Utils.appBarColor = Colors.purple;
        break;
      case CustomColor.Orange:
        Utils.appBarColor = Colors.orange;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.mainColor,
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Utils.appBarColor,
      ),
      drawer: MainDrawer(Screens.Settings),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Choose Theme Color',
            style: TextStyle(
              color: Utils.textColor,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Red',
                  style: TextStyle(
                    color: Utils.textColor,
                  ),
                ),
                leading: Radio<CustomColor>(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.red),
                  value: CustomColor.Red,
                  groupValue: selectedColor,
                  onChanged: (CustomColor? value) {
                    setState(() {
                      selectedColor = value;
                      Utils.changeAppBarColor(selectedColor as CustomColor);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Blue',
                  style: TextStyle(
                    color: Utils.textColor,
                  ),
                ),
                leading: Radio<CustomColor>(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.blue),
                  value: CustomColor.Blue,
                  groupValue: selectedColor,
                  onChanged: (CustomColor? value) {
                    setState(() {
                      selectedColor = value;
                      Utils.changeAppBarColor(selectedColor as CustomColor);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Orange',
                  style: TextStyle(
                    color: Utils.textColor,
                  ),
                ),
                leading: Radio<CustomColor>(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.orange),
                  value: CustomColor.Orange,
                  groupValue: selectedColor,
                  onChanged: (CustomColor? value) {
                    setState(() {
                      selectedColor = value;
                      Utils.changeAppBarColor(selectedColor as CustomColor);
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Purple',
                  style: TextStyle(
                    color: Utils.textColor,
                  ),
                ),
                leading: Radio<CustomColor>(
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.purple),
                  value: CustomColor.Purple,
                  groupValue: selectedColor,
                  onChanged: (CustomColor? value) {
                    setState(() {
                      selectedColor = value;
                      Utils.changeAppBarColor(selectedColor as CustomColor);
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (Utils.appMode == Mode.Dark)
                    const Text(
                      'Turn Light Mode',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )
                  else
                    const Text('Turn Dark Mode'),
                  Switch(
                    value: darkMode,
                    onChanged: (e) {
                      setState(() {
                        darkMode = e;
                        if (darkMode) {
                          Utils.convertDarkMode();
                        } else {
                          Utils.convertLightMode();
                        }
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Utils.appBarColor,
                ),
                onPressed: () {
                  Utils.saveAppBarColor(selectedColor as CustomColor);
                  Utils.saveSystemMode();
                },
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
