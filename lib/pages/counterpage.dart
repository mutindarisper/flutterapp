// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  //variable
  int _counter = 0;

  //methods
  void incrementCounter() {
    setState(() { //setstate rebuilds the widget
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text("You pushed the button this times:"),
          Text(_counter.toString(),
          style: TextStyle(fontSize: 40)
          ),
          ElevatedButton(
            onPressed: incrementCounter,
            child: Text('Increment'),
          ),
        ]
        ),
      )
      
    );
  }
}