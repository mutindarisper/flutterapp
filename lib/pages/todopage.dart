// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => TodoPageState();
}

class TodoPageState extends State<TodoPage> {
  String todoItem = "";
  void greetUser() {
    String userInput = mycontroller.text;
    setState(() {
      todoItem = userInput;
      
    });
    
    // print('Hello, $userInput!');
    // mycontroller.clear();
    // print(mycontroller.text);
  }

  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(todoItem),
            TextField(
              // onChanged: (value) {
              //   mycontroller.text = value;
              // },
              controller: mycontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter your todo"
                  // labelText: 'Enter your todo',
                  ),
            ),
            ElevatedButton(
              onPressed: greetUser,
              child: Text('Tap'),
            )
          ],
        ),
      )),
    );
  }
}
