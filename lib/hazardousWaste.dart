//import 'package:event_recorder/firstForm/personalProtection.dart';
import 'package:event_recorder/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HazardousWaste(title: 'Lab Inspection Form'),
    );
  }
}

class HazardousWaste extends StatefulWidget {
  const HazardousWaste({super.key, required this.title});
  final String title;

  @override
  State<HazardousWaste> createState() => HazardousWasteState();
}

class HazardousWasteState extends State<HazardousWaste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Inspection Form"),
      ),
      body: Column(
        children: [
          Text("Hazardous Waste Compliance", style: TextStyle(fontSize: 25)),
          TaskItem(label: "46. Hazardous Chemical Waste Labeling"),
          SubTaskItem(
              label: "a. Not labeled \"Waste\"  or \"Hazardous Waste\""),
          SubTaskItem(label: "b. All chemical components not listed"),
          SubTaskItem(label: "c. No accumulation start date"),
          TaskItem(label: "47. Hazardous Chemical Waste Storage"),
          SubTaskItem(label: "a. Not segrated by hazard class"),
          SubTaskItem(
              label: "b. Greater than one container per chemical waste stream"),
          SubTaskItem(
              label:
                  "c. Excessive amounts of hazardous wastes accumulated (chemical. biological, radioactive)"),
          SubTaskItem(
              label: "d. Accumulation start date greater than one year"),
          TaskItem(label: "48. Sharps, Broken Glass, Empty Containers:"),
          SubTaskItem(
              label: "a. Sharps containers not used or disposed of improperly"),
          SubTaskItem(label: "b. Broken Glass not placed in proper receptacle"),
          SubTaskItem(
              label:
                  "c. Failed to triple rinse and remove/mark out labels of empty chemical containers"),
          TaskItem(label: "49. Mercury/Chemical Spills:"),
          SubTaskItem(
              label: "a. Broken mercury thermometer not contained or labeled"),
          SubTaskItem(
              label:
                  "b. Failure to promptly report a mercury/ chemical release"),
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

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
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

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        //Navigator.push( // will work with personalProtection.dart
        //    context,
        //    MaterialPageRoute(
        //        builder: (context) => const PersonalProtection(title: "")));
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
