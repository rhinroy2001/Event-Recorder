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
      home: const PersonalProtection(title: 'Lab Inspection Form'),
    );
  }
}

class PersonalProtection extends StatefulWidget {
  const PersonalProtection({super.key, required this.title});
  final String title;

  @override
  State<PersonalProtection> createState() => PersonalProtectionState();
}

class PersonalProtectionState extends State<PersonalProtection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Inspection Form"),
      ),
      body: Column(
        children: [
          Text("Hazardous Waste Compliance", style: TextStyle(fontSize: 25)),
          TaskItem(label: "50. Respirators used without proper clearance/fit testing/training"),
          TaskItem(label: "51. Personal protective equipment (e.g., gloves, safety glasses, lab coat) unavailable quantity"),
          TaskItem(label: "52. Gloves, safety glasses, or other protective equipment not worn while working with hazardous chemicals/reagents"),
          TaskItem(label: "53. Evidence of open toad shoes (sandals, etc.) worn in the laboratory"),
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
        //Navigator.push(context,
            //MaterialPageRoute(builder: (context) => const 'nextPage'(title: "")));
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
        ]
      )
    );
  }
}
