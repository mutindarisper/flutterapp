// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_first_app/pages/homepage.dart';
import 'package:my_first_app/pages/profilepage.dart';
import 'package:my_first_app/pages/settingspage.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//keep track of current page to display
  int _selectedIndex = 0;

  //method to update selectedindex

  //method to update selectedindex
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //homepage
    Homepage(),

    //profilepage
    ProfilePage(),

    //settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ]),
      //  drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(children: [
      //     DrawerHeader(
      //       child: Icon(
      //          Icons.favorite,
      //          size: 48,
      //          )
      //          ),

      //           //homepage list tile
      //  ListTile(
      //    leading: Icon(Icons.home),
      //    title: Text('Home'),
      //    onTap: () {
      //     //pop drawer first
      //     Navigator.pop(context);

      //      //navigate to home page
      //      Navigator.pushNamed(context, '/homepage');
      //    },
      //  ),

      //  ListTile(
      //    leading: Icon(Icons.settings),
      //    title: Text("Settings"),
      //    onTap: () {
      //     //pop drawer first
      //     Navigator.pop(context);

      //      //navigate to profile page
      //      Navigator.pushNamed(context, '/settingspage');
      //    },
      //  ),

      //  ListTile(
      //    leading: Icon(Icons.exit_to_app),
      //    title: Text('Logout'),
      //    onTap: () {
      //      //logout user and navigate to login page
      //      Navigator.pushNamed(context, '/firstpage');
      //    },
      //  ),

      // ],),
      //  ),

      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To Second Page"),
      //     onPressed: () {
      //       //navigate to second page
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
    );
  }
}
