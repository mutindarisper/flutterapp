// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:my_first_app/util/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  
  
  DialogBox({
    super.key, 
  required this.controller, 
  required this.onSave, 
  required this.onCancel,
   });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.pink[50],
        content: Container(
          height: 120,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Add New Task"),
                ),

                // save and cancel buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //save button
                    MyButton(text: "Save", onPressed: onSave),
                    const SizedBox(width: 8),
                    MyButton(text: "Cancel", onPressed: onCancel)
                  ],
                )
                //  ElevatedButton()
              ]),
        ));
  }
}
