import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  Button({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        child: Text(text),
        onPressed: () {},
      ),
    );
  }
}
