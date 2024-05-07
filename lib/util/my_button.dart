import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.yellow),
      ),
      // color: Theme.of(context).primaryColor,
      color: Colors.black,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 3, color: Colors.yellow),
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
