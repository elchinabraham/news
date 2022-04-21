// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:news/screens/about_screen.dart';
import 'package:news/screens/categories_screen.dart';
import 'package:news/screens/contact_screen.dart';
import 'package:news/screens/favorites_screen.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/news_screen.dart';
import 'package:news/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        NewsScreen.routeName: (ctx) => NewsScreen(),
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
        ContactScreen.routeName: (ctx) => ContactScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => NewsScreen());
      },
    );
  }
}
