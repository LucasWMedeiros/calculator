import 'package:calculator/component/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {

  final List<Button> buttons;

  ButtonRow(this.buttons); 
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget> [], (list, b) {
        list.isEmpty ? list.add(b) :  list.addAll([SizedBox(width: 1), b]);
        return list;
        } 
      ),
      )
    );
  }
}