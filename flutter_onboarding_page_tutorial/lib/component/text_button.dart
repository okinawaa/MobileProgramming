import 'package:flutter/material.dart';

class PTextButton extends StatelessWidget {
  const PTextButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.buttonColor})
      : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          title,
          style: TextStyle(color: buttonColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
