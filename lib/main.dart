// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Mitch", "Sharon", "Risper"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            //skeleton widget that holds different parts of my app

            //  backgroundColor: const Color.fromARGB(255, 112, 190, 226),
            appBar: AppBar(
              title: Text('Risper',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
              backgroundColor: Colors.blueAccent,
              elevation: 0,
              leading: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            body:
                // ListView.builder(
                //     itemCount: names.length,
                //     itemBuilder: (context, index) => ListTile(
                //           title: Text(names[index]),
                //         ))));
                GridView.builder(
                    itemCount: 64,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) => Container(
                          color: Colors.deepPurple,
                          margin: EdgeInsets.all(2),
                        ))));
  }
}
