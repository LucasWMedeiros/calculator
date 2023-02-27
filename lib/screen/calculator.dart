import 'package:calculator/component/display.dart';
import 'package:calculator/component/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}