import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 14, bottom: 14),
      onPressed: onPressed,
      color: Colors.blue.shade500,
      child: Text(text, style: const TextStyle(color: Colors.white),),
    );
  }
}
