import 'package:event_recorder/labInspectionForm/labpractices.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class ChemicalHygiene extends StatefulWidget {
  const ChemicalHygiene({super.key, required this.title, required this.data});
  final String title;
  final Data data;

  @override
  State<ChemicalHygiene> createState() => ChemicalHygieneState();
}

class ChemicalHygieneState extends State<ChemicalHygiene> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      final String text = controller.text;
      controller.value = controller.value.copyWith(
        text: text,
      );
    });
  }

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
                  Text("Chemical Hygiene Plan and Training Records",
                      style: TextStyle(fontSize: 25)),
                  TaskItem(
                      isChecked: widget.data.sixteen,
                      key: Key('1'),
                      label: "16. Chemical Hygiene Plan unavailable"),

                  TaskItem(
                      isChecked: widget.data.seventeen,
                      key: Key('2'),
                      label: "17. MSDS's unavailable for lab employees"),

                  TaskItem(
                      isChecked: widget.data.eighteen,
                      key: Key('3'),
                      label:
                          "18. Laboratory Safety and Compliance training outdated"),
                  SubTaskItem(
                      isChecked: widget.data.eighteenA,
                      key: Key('4'),
                      label:
                          "a. Annual Lab Specific Training Outline unavailable and/or attendance not documented"),
                  SubTaskItem(
                      isChecked: widget.data.eighteenB,
                      key: Key('5'),
                      label:
                          "b. New Employees have not attended safety training"),

                  TaskItem(
                      isChecked: widget.data.nineteen,
                      key: Key('6'),
                      label:
                          "19. Annual Lab Specific Training Outline unavailable and/or attendance not documented"),
                  TaskItem(
                      isChecked: widget.data.twenty,
                      key: Key('7'),
                      label: "20. Chemical inventory unavailable"),
                  TaskItem(
                      isChecked: widget.data.twentyone,
                      key: Key('8'),
                      label: "21. Previous lab inspection not posted"),
                  //TaskItem(label: ""),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Comments(
                  controller: controller,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text('Take Photo'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: UploadPhoto(
                  key: Key('photo chemical hygiene'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(
                    key: Key('9'), label: "This page is completed."),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Buttons(widget.data),
              ),
            ],
          ),
        ),
      ),
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
  NextButton(this.data);
  final Data data;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('next'),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LabPractices(
                    title: "", key: Key('lab practices'), data: data)));
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
  Buttons(this.data);
  final Data data;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      BackButton(),
      SizedBox(width: 20),
      SizedBox(width: 20),
      NextButton(data),
    ]));
  }
}
