import 'package:event_recorder/labInspectionForm/firesafety.dart';
import 'package:flutter/material.dart';

void labInspection() {
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
      home: const GeneralInfo(title: 'Lab Inspection Form'),
    );
  }
}

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({super.key, required this.title});
  final String title;

  @override
  State<GeneralInfo> createState() => GeneralInfoState();
}

class GeneralInfoState extends State<GeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Inspection Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                    Text("General Information", style: TextStyle(fontSize: 25)),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Date',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Faculty',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Building Room',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Department Division',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Inspector',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Phone',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(label: "This page is completed."),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Buttons(),
              ),
            ],
          ),
        ),
      ),
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
        Navigator.push(
            // will work with firesafety.dart
            context,
            MaterialPageRoute(
                builder: (context) => const FireSafety(title: "")));
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
