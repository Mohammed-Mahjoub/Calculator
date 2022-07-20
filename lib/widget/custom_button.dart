import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.toDo,
    required this.content,
    required this.color
  });

  VoidCallback toDo;
  String content;
  Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: toDo,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(80, 80),
        shape: const CircleBorder(),
        primary: color,
      ),
    );
  }
}