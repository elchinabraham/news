// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/widgets/main_drawer.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      drawer: MainDrawer(Screens.About),
      body: Container(
        child: const Text('About....'),
      ),
    );
  }
}
