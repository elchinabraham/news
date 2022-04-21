import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.mainColor,
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Utils.appBarColor,
      ),
      drawer: MainDrawer(Screens.Settings),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (Utils.appMode == Mode.Dark)
              const Text(
                'Turn Light Mode',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            else
              const Text('Turn Dark Mode'),
            Switch(
              value: darkMode,
              onChanged: (e) {
                setState(() {
                  darkMode = e;
                  if (!darkMode) {
                    Utils.convertLightMode();
                  } else {
                    Utils.convertDarkMode();
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
