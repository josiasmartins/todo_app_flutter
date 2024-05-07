import "package:flutter/material.dart";
import "package:todo_app/util/my_button.dart";

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: () {}),

                const SizedBox(
                  width: 8,
                ),

                // cancel button
                MyButton(text: "Save", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
