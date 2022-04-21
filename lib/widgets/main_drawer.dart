// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/models/utils.dart';
import 'package:news/screens/about_screen.dart';
import 'package:news/screens/categories_screen.dart';
import 'package:news/screens/contact_screen.dart';
import 'package:news/screens/favorites_screen.dart';
import 'package:news/screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  final Screens _screens;
  MainDrawer(this._screens);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Utils.mainColor,
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            alignment: Alignment.centerLeft,
            color: Utils.appBarColor,
            child: const Text(
              'News Application',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Utils.iconColor,
              size: 26,
            ),
            title: Text(
              'Main Page',
              style: TextStyle(
                color: Utils.textColor,
                fontSize: 15,
              ),
            ),
            onTap: () {
              // Open main page
              Navigator.of(context).pop();
              if (_screens != Screens.Home) {
                Navigator.of(context).pushReplacementNamed('/');
              }
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.list_outlined,
              color: Utils.iconColor,
              size: 26,
            ),
            title: Text(
              'Categories',
              style: TextStyle(
                color: Utils.textColor,
                fontSize: 15,
              ),
            ),
            onTap: () {
              // open categories screen
              Navigator.of(context).pop();
              if (_screens != Screens.Categories) {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(CategoriesScreen.routeName);
              }
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Utils.iconColor,
              size: 26,
            ),
            title: Text(
              'Favorites',
              style: TextStyle(
                color: Utils.textColor,
                fontSize: 15,
              ),
            ),
            onTap: () {
              // open main page with only favorite items
              Navigator.of(context).pop();
              if (_screens != Screens.Favorites) {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(FavoritesScreen.routeName);
              }
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Utils.iconColor,
              size: 26,
            ),
            title: Text(
              'About',
              style: TextStyle(
                color: Utils.textColor,
                fontSize: 15,
              ),
            ),
            onTap: () {
              // open about screen
              Navigator.of(context).pop();
              if (_screens != Screens.About) {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(AboutScreen.routeName);
              }
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.mail,
              color: Utils.iconColor,
              size: 26,
            ),
            title: Text(
              'Contact',
              style: TextStyle(
                color: Utils.textColor,
                fontSize: 15,
              ),
            ),
            onTap: () {
              // open contact screen
              Navigator.of(context).pop();
              if (_screens != Screens.Contact) {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(ContactScreen.routeName);
              }
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Utils.iconColor,
              size: 26,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Utils.textColor,
                fontSize: 15,
              ),
            ),
            onTap: () {
              // open contact screen
              Navigator.of(context).pop();
              if (_screens != Screens.Settings) {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(SettingsScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
