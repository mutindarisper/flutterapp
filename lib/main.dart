// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

// import 'package:my_first_app/pages/counterpage.dart';
import 'package:my_first_app/pages/first_page.dart';
import 'package:my_first_app/pages/homepage.dart';
import 'package:my_first_app/pages/profilepage.dart';
import 'package:my_first_app/pages/settingspage.dart';
// import 'package:my_first_app/pages/todopage.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //functions

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
        theme: ThemeData(primarySwatch: Colors.pink),
        routes: {
          '/firstpage': (context) => FirstPage(), // Route to FirstPage
          '/homepage': (context) => Homepage(),
          '/settingspage': (context) => SettingsPage(),
          '/profilepage': (context) => ProfilePage()
        });
  }
}
