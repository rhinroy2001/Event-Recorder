import 'package:flutter/material.dart';

/*
differntCheckBoxes.dart

Contains the different check boxes used in OSHAForm.dart;
  TaskItem, N/A, Good, Okay, Bad.

Last four textboxes are just copy paste of original TaskItem widget with 
  different names. Maybe helpful, maybe not, but they are there.
*/

// TaskItem, modified so text following check box is wrapped when it meets the end of a page
class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  TaskItemState createState() => TaskItemState();
}

class TaskItemState extends State<TaskItem> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Expanded( // Expanded() makes text wrap
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: Text(widget.label, style: TextStyle(fontSize: 15))),
        ),
      ],
    );
  }
}

// N/A check box
class NA_CheckBox extends StatefulWidget {
  NA_CheckBox({Key? key}) : super(key: key);

  @override
  NA_CheckBoxState createState() => NA_CheckBoxState();
}

class NA_CheckBoxState extends State<NA_CheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
      ],
    );
  }
}

// OKAY check box
class Okay_CheckBox extends StatefulWidget {
  Okay_CheckBox({Key? key}) : super(key: key);

  @override
  Okay_CheckBoxState createState() => Okay_CheckBoxState();
}

class Okay_CheckBoxState extends State<Okay_CheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
      ],
    );
  }
}

// GOOD check box
class Good_CheckBox extends StatefulWidget {
  Good_CheckBox({Key? key}) : super(key: key);

  @override
  Good_CheckBoxState createState() => Good_CheckBoxState();
}

class Good_CheckBoxState extends State<Good_CheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
      ],
    );
  }
}

// BAD check box
class Bad_CheckBox extends StatefulWidget {
  Bad_CheckBox({Key? key}) : super(key: key);

  @override
  Bad_CheckBoxState createState() => Bad_CheckBoxState();
}

class Bad_CheckBoxState extends State<Bad_CheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
      ],
    );
  }
}