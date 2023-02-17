import 'package:calculator/component/display.dart';
import 'package:calculator/component/keyboard.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  _onPressed(String text){
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display('123.51'),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}