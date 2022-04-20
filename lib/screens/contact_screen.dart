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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
                decoration: InputDecoration(
                  labelText: "Your Name",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  suffixIcon: const Icon(
                    Icons.man,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
                decoration: InputDecoration(
                  labelText: "Your Email",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  suffixIcon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLines: 6, // <--- maxLines
                cursorColor: Colors.white,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
                decoration: InputDecoration(
                  labelText: "Your Message",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  suffix: const Icon(
                    Icons.message,
                    color: Colors.white,
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
                    primary: Colors.grey,
                  ),
                  onPressed: () {},
                  child: const Text('Send Message'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
