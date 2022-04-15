import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/widgets/main_drawer.dart';

// ignore: use_key_in_widget_constructors
// testing
class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      drawer: MainDrawer(Screens.Categories),
      body: Container(
        child: const Text('Categories'),
      ),
    );
  }
}
