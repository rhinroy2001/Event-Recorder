import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/personalprotection_new.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class HazardousWaste extends StatefulWidget {
  const HazardousWaste({super.key, required this.title, required this.data});
  final String title;
  final Data data;

  @override
  State<HazardousWaste> createState() => HazardousWasteState();
}

class HazardousWasteState extends State<HazardousWaste> {
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
                  Text("Hazardous Waste Compliance",
                      style: TextStyle(fontSize: 25)),
                  TaskItem(
                      isChecked: widget.data.fortysix,
                      key: Key('1'),
                      label: "46. Hazardous Chemical Waste Labeling"),
                  SubTaskItem(
                      isChecked: widget.data.fortysixA,
                      key: Key('2'),
                      label:
                          "a. Not labeled \"Waste\"  or \"Hazardous Waste\""),
                  SubTaskItem(
                      isChecked: widget.data.fortysixB,
                      key: Key('3'),
                      label: "b. All chemical components not listed"),
                  SubTaskItem(
                      isChecked: widget.data.fortysixC,
                      key: Key('4'),
                      label: "c. No accumulation start date"),
                  TaskItem(
                      isChecked: widget.data.fortyseven,
                      key: Key('5'),
                      label: "47. Hazardous Chemical Waste Storage"),
                  SubTaskItem(
                      isChecked: widget.data.fortysevenA,
                      key: Key('6'),
                      label: "a. Not segrated by hazard class"),
                  SubTaskItem(
                      isChecked: widget.data.fortysevenB,
                      key: Key('7'),
                      label:
                          "b. Greater than one container per chemical waste stream"),
                  SubTaskItem(
                      isChecked: widget.data.fortysevenC,
                      key: Key('8'),
                      label:
                          "c. Excessive amounts of hazardous wastes accumulated (chemical. biological, radioactive)"),
                  SubTaskItem(
                      isChecked: widget.data.fortysevenD,
                      key: Key('9'),
                      label:
                          "d. Accumulation start date greater than one year"),
                  TaskItem(
                      isChecked: widget.data.fortyeight,
                      key: Key('10'),
                      label: "48. Sharps, Broken Glass, Empty Containers:"),
                  SubTaskItem(
                      isChecked: widget.data.fortyeightA,
                      key: Key('11'),
                      label:
                          "a. Sharps containers not used or disposed of improperly"),
                  SubTaskItem(
                      isChecked: widget.data.fortyeightB,
                      key: Key('12'),
                      label: "b. Broken Glass not placed in proper receptacle"),
                  SubTaskItem(
                      isChecked: widget.data.fortyeightC,
                      key: Key('13'),
                      label:
                          "c. Failed to triple rinse and remove/mark out labels of empty chemical containers"),
                  TaskItem(
                      isChecked: widget.data.fortynine,
                      key: Key('14'),
                      label: "49. Mercury/Chemical Spills:"),
                  SubTaskItem(
                      isChecked: widget.data.fortynineA,
                      key: Key('15'),
                      label:
                          "a. Broken mercury thermometer not contained or labeled"),
                  SubTaskItem(
                      isChecked: widget.data.fortynineB,
                      key: Key('16'),
                      label:
                          "b. Failure to promptly report a mercury/ chemical release"),
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
                  key: Key('photo hazardous waste'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(
                    key: Key('17'), label: "This page is completed."),
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
                builder: (context) => PersonalProtection(
                    title: "", key: Key('personal protection'), data: data)));
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
