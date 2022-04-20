// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:news/models/screens.dart';
import 'package:news/widgets/main_drawer.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
        title: const Text('About'),
      ),
      drawer: MainDrawer(Screens.About),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            """
The BBC is the world’s leading public service broadcaster
We’re impartial and independent, and every day we create distinctive, world-class programmes and content which inform, educate and entertain millions of people in the UK and around the world.

We do this across:

A portfolio of television services, including the UK’s most-watched channel BBC One, the pioneering online-only youth service BBC Three, and our multi award-winning channels for children, as well as national and regional television programmes and services across England. Northern Ireland, Scotland and Wales
Ten UK-wide radio networks, providing the best live music broadcasting in the UK, as well as speech radio which informs, educates and entertains. We also have two national radio services each in Scotland, Wales and Northern Ireland and 39 local radio stations across England and the Channel Islands, providing an invaluable and unique service to listeners across the UK
Our digital services including BBC News, Sport, Weather CBBC and CBeebies, iPlayer and BBC Sounds, BBC Red Button and our vast archive
BBC World Service television, radio and online on more than 40 languages
Established by a Royal Charter, the BBC is principally funded through the licence fee paid by UK households. Our role is to fulfil our mission and promote our Public Purposes.

Our commercial operations including BBC Studios, the BBC’s award-winning production company and world-class distributor, provide additional revenue for investment in new programming and services for UK audiences.

The BBC’s Board ensures that we deliver our mission and public purposes which are set out in the Charter. The Executive Committee is responsible for day-to-day management. We are regulated by Ofcom.
      """,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
