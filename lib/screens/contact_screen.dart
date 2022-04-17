// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../models/screens.dart';
import '../widgets/main_drawer.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contact';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
        title: const Text('Categories'),
      ),
      drawer: MainDrawer(Screens.Contact),
      body: Container(
        child: const Text(
          'Contact....',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
