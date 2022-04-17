import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/widgets/main_drawer.dart';

// ignore: use_key_in_widget_constructors
// testing 2
class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
        title: const Text('Categories'),
      ),
      drawer: MainDrawer(Screens.Categories),
      body: Container(
        child: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
