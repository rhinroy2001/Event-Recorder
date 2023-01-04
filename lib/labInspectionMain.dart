import 'package:flutter/material.dart';
import 'generalInfo.dart';
// import new file name here

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
      home: const LabForm(title: 'Lab Inspection Form'),
    );
  }
}

class LabForm extends StatefulWidget {
  const LabForm({super.key, required this.title});
  final String title;

  @override
  State<LabForm> createState() => _LabForm();
}

class _LabForm extends State<LabForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Info(),
    );
  }
}
