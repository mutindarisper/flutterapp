// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_first_app/pages/counterpage.dart';
import 'package:my_first_app/pages/first_page.dart';
import 'package:my_first_app/pages/homepage.dart';
import 'package:my_first_app/pages/profilepage.dart';
import 'package:my_first_app/pages/settingspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  //functions

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Counterpage(),
      routes: {
        '/firstpage': (context) => FirstPage(),  // Route to FirstPage 
        '/homepage': (context) => Homepage(),
        '/settingspage': (context) => SettingsPage(),
        '/profilepage': (context) => ProfilePage()
      });
  }
}
