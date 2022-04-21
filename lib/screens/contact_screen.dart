// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:news/models/utils.dart';

import '../models/screens.dart';
import '../widgets/main_drawer.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contact';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.mainColor,
      appBar: AppBar(
        backgroundColor: Utils.appBarColor,
        title: const Text('Contact'),
      ),
      drawer: MainDrawer(Screens.Contact),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Utils.textColor,
                style: TextStyle(
                  color: Utils.textColor,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  labelText: "Your Name",
                  labelStyle: TextStyle(
                    color: Utils.textColor,
                  ),
                  fillColor: Utils.textColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Utils.textColor),
                  ),
                  suffixIcon: Icon(
                    Icons.man,
                    color: Utils.iconColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Utils.textColor,
                style: TextStyle(
                  color: Utils.textColor,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  labelText: "Your Email",
                  labelStyle: TextStyle(
                    color: Utils.textColor,
                  ),
                  fillColor: Utils.textColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Utils.textColor),
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Utils.iconColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 6, // <--- maxLines
                cursorColor: Utils.textColor,
                style: TextStyle(
                  color: Utils.textColor,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  labelText: "Your Message",
                  labelStyle: TextStyle(
                    color: Utils.textColor,
                  ),
                  fillColor: Utils.textColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Utils.textColor),
                  ),
                  suffix: Icon(
                    Icons.message,
                    color: Utils.iconColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Utils.buttonColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Send Message',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
