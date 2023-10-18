// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';
// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller ;
  VoidCallback onSave ;
  VoidCallback onCancel ;
  DialogBox({super.key , required this.controller , required this.onSave , required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor : Colors.yellow[300] ,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input 
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add a New Task" ,
              ),
            ) ,

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button 
                MyButton(text: 'Create', onPressed: onSave),
                const SizedBox(width : 8),
                // Cancel Button
                MyButton(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}