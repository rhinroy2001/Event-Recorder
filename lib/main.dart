import 'package:flutter/material.dart';
import 'labInspectionMain.dart';

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
      home: const MyHomePage(title: 'Environmental Health and Safety'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), actions: [
      PopupMenuButton<int>(
        itemBuilder: ((context) => [
              PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text('Lab Inspection Form'),
                    ],
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Row(children: const [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text('OSHA Form')
                  ])),
            ]),
        onSelected: (value) {
          if (value == 1) {
            labInspection(); // there is no back button or submit
          } else if (value == 2) {
            Text('OSHA Form');
          }
        },
        offset: const Offset(0, -200),
      )
    ]));
  }
}
