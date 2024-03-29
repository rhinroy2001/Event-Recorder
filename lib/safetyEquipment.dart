//import 'package:event_recorder/firstForm/hazardousWaste.dart';
import 'package:event_recorder/main.dart';
import 'package:flutter/material.dart';

class SafetyEquipment extends StatefulWidget {
  const SafetyEquipment({super.key, required this.title});
  final String title;

  @override
  State<SafetyEquipment> createState() => SafetyEquipmentState();
}

class SafetyEquipmentState extends State<SafetyEquipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Inspection Form"),
      ),
      body: Column(
        children: [
          Text("Safety Equipment and Engineering Controls",
              style: TextStyle(fontSize: 25)),
          TaskItem(label: "40. Eye Wash Station"),
          SubTaskItem(label: "a. Unavailable or not accessible/blocked"),
          SubTaskItem(label: "b. Weekly inspection not documented"),
          TaskItem(label: "41. Safety shower unavailable or not accessible"),
          TaskItem(
              label:
                  "42. First aid kit location not known and/or not available"),
          TaskItem(
              label:
                  "43. Fire extinguisher not readily accessible and/or inspected"),
          TaskItem(label: "44. Fume Hood"),
          SubTaskItem(
              label:
                  "a. Unavailable or not used when handling hazardous chemicals"),
          SubTaskItem(label: "b. Not inspected annaually"),
          SubTaskItem(
              label: "c. Chemical containers not capped or in poor condition"),
          SubTaskItem(label: "d. Performance impeded by overcrowding"),
          TaskItem(label: "45. Vacuum System"),
          SubTaskItem(
              label: "a. In-house vacuum system not adequately protected"),
          SubTaskItem(
              label: "b. Vacuum system flask not labeled and protected"),
          //TaskItem(label: ""),

          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Comment Box",
            ),
          ),

          ConfirmTask(label: "This page is completed."),
          Buttons(),
        ],
      ),
    );
  }
}

// TaskItem
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
        Text(widget.label),
      ],
    );
  }
}

// SubtaskItem
class SubTaskItem extends StatefulWidget {
  final String label;

  SubTaskItem({Key? key, required this.label}) : super(key: key);

  @override
  SubTaskItemState createState() => SubTaskItemState();
}

class SubTaskItemState extends State<SubTaskItem> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 25),
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Text(widget.label),
      ],
    );
  }
}

// ConfirmTask
class ConfirmTask extends StatefulWidget {
  final String label;

  ConfirmTask({Key? key, required this.label}) : super(key: key);

  @override
  ConfirmTaskState createState() => ConfirmTaskState();
}

class ConfirmTaskState extends State<ConfirmTask> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //SizedBox(width: 25),
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

// BackButton
class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //Navigator.pop(context);
      },
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
        child: const Text(
          "Back",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

// NextButton
class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //Navigator.push( // will work with hazardWaste.dart
        //    context,
        //    MaterialPageRoute(
        //        builder: (context) => const HazardousWaste(title: "")));
      },
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      BackButton(),
      SizedBox(width: 20),
      SizedBox(width: 20),
      NextButton(),
    ]));
  }
}
