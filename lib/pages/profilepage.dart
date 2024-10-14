// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.purple[100],
      body: Center(
        child: Text('Profile page.'),
      ),
    );
  }

}