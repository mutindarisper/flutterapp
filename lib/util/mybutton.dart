import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // MyButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  final String text;
  VoidCallback onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child:Text(text),
      
    );
  }
}
