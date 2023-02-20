import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/signspostings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FireSafety(title: 'Lab Inspection Form'),
    );
  }
}

class FireSafety extends StatefulWidget {
  const FireSafety({super.key, required this.title});
  final String title;

  @override
  State<FireSafety> createState() => FireSafetyState();
}

class FireSafetyState extends State<FireSafety> {
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
              //body:
              Column(
                children: [
                  Text("General Fire Safety and Housekeeping",
                      style: TextStyle(fontSize: 25)),
                  TaskItem(
                      label:
                          "1. Aisles and walkways not free of tripping hazards"),

                  TaskItem(
                      label:
                          "2. High shelves and/or cabinet tops have items which may fall and injure someone"),

                  TaskItem(
                      label:
                          "3. Empty containers, boxes and broken equipment not promptly discarded"),
                  TaskItem(
                      label:
                          "4. Emergency exit or egress route blocked or poorly accessible"),
                  TaskItem(
                      label:
                          "5. Power cord found in poor condition or not tie wrapped"),
                  TaskItem(
                      label:
                          "6. Energized electric panel uncovered and/or blocked"),
                  TaskItem(
                      label:
                          "7. Portable elctric heater used in the laboratory"),
                  TaskItem(
                      label:
                          "8. Failure to remedate non-hazardous chemical release within a timely manner"),
                  TaskItem(label: "9. Laboratory doors propped open"),
                  TaskItem(
                      label:
                          "10. Items stored within 18 inches of the ceiling"),
                  TaskItem(
                      label:
                          "11. Workers do not use a safe platform for climbing"),
                  //TaskItem(label: ""),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Comments(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text('Take Photo'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: UploadPhoto(),
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
        Navigator.push(
            // will work with signsPostings.dart
            context,
            MaterialPageRoute(
                builder: (context) => const SignsPostings(title: "")));
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

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  CommentsState createState() {
    return CommentsState();
  }
}

class CommentsState extends State<Comments> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              key: _formKey,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Comment Box",
              ),
              minLines: 1,
              maxLines: 6,
            ),
          ],
        ));
  }
}
