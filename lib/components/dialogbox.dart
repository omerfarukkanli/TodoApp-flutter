import 'package:flutter/material.dart';
import 'package:todoapp/components/button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCansel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCansel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'save',
                  onPressed: onSave,
                ),
                MyButton(
                  text: 'cancel',
                  onPressed: onCansel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
