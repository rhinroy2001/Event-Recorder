import 'package:event_recorder/labInspectionForm/chemicalhygiene.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignsPostings(title: 'Lab Inspection Form'),
    );
  }
}

class SignsPostings extends StatefulWidget {
  const SignsPostings({super.key, required this.title});
  final String title;

  @override
  State<SignsPostings> createState() => SignsPostingsState();
}

class SignsPostingsState extends State<SignsPostings> {
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
                  Text("Signs and Postings", style: TextStyle(fontSize: 25)),
                  TaskItem(
                      label:
                          "12. Lab specific emergency contact list not updated or posted"),
                  TaskItem(
                      label:
                          "13. Emergency Produres not posted by the laboratory phone"),
                  TaskItem(
                      label:
                          "14. Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage\""),
                  TaskItem(
                      label:
                          "15. Cabinets and/or storage areas not labeled properly"),

                  Comments(),
                  //UploadPhoto(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ConfirmTask(label: "This page is completed."),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Buttons(),
                  ),
                ],
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
                builder: (context) => const ChemicalHygiene(title: "")));
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
