// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/screens/about_screen.dart';
import 'package:news/screens/categories_screen.dart';
import 'package:news/screens/contact_screen.dart';
import 'package:news/screens/favorites_screen.dart';

class MainDrawer extends StatelessWidget {
  final Screens _screens;
  MainDrawer(this._screens);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
            alignment: Alignment.centerLeft,
            color: Colors.red[500],
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
            leading: const Icon(Icons.home),
            title: const Text('Main Page'),
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
            leading: const Icon(Icons.list_outlined),
            title: const Text('Categories'),
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
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
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
            leading: const Icon(Icons.info),
            title: const Text('About'),
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
            leading: const Icon(Icons.mail),
            title: const Text('Contact'),
            onTap: () {
              // open contact screen
              Navigator.of(context).pop();
              if (_screens != Screens.Contact) {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(ContactScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
