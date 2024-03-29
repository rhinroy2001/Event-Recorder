import 'package:event_recorder/labInspectionForm/labpractices.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class ChemicalHygiene extends StatefulWidget {
  const ChemicalHygiene({super.key, required this.title});
  final String title;

  @override
  State<ChemicalHygiene> createState() => ChemicalHygieneState();
}

class ChemicalHygieneState extends State<ChemicalHygiene> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    data.chemicalHygieneController.addListener(() {
      data.commentsChemicalHygiene = data.chemicalHygieneController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
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
                        key: Key('16'),
                        label: "16. Chemical Hygiene Plan unavailable"),

                    TaskItem(
                        key: Key('17'),
                        label: "17. MSDS's unavailable for lab employees"),

                    TaskItem(
                        key: Key('18'),
                        label:
                            "18. Laboratory Safety and Compliance training outdated"),
                    SubTaskItem(
                        key: Key('18a'),
                        label:
                            "a. Annual Lab Specific Training Outline unavailable and/or attendance not documented"),
                    SubTaskItem(
                        key: Key('18b'),
                        label:
                            "b. New Employees have not attended safety training"),

                    TaskItem(
                        key: Key('19'),
                        label:
                            "19. Annual Lab Specific Training Outline unavailable and/or attendance not documented"),
                    TaskItem(
                        key: Key('20'),
                        label: "20. Chemical inventory unavailable"),
                    TaskItem(
                        key: Key('21'),
                        label: "21. Previous lab inspection not posted"),
                    //TaskItem(label: ""),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Comments(
                    key: Key("chemicalhygiene"),
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
                  child: Buttons(),
                ),
              ],
            ),
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
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('next'),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LabPractices(title: "", key: Key('lab practices'))));
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
