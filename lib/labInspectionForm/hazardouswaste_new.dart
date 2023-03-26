import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/personalprotection_new.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

class HazardousWaste extends StatefulWidget {
  const HazardousWaste({super.key, required this.title});
  final String title;

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
                      key: Key('1'),
                      label: "46. Hazardous Chemical Waste Labeling"),
                  SubTaskItem(
                      key: Key('2'),
                      label:
                          "a. Not labeled \"Waste\"  or \"Hazardous Waste\""),
                  SubTaskItem(
                      key: Key('3'),
                      label: "b. All chemical components not listed"),
                  SubTaskItem(
                      key: Key('4'), label: "c. No accumulation start date"),
                  TaskItem(
                      key: Key('5'),
                      label: "47. Hazardous Chemical Waste Storage"),
                  SubTaskItem(
                      key: Key('6'), label: "a. Not segrated by hazard class"),
                  SubTaskItem(
                      key: Key('7'),
                      label:
                          "b. Greater than one container per chemical waste stream"),
                  SubTaskItem(
                      key: Key('8'),
                      label:
                          "c. Excessive amounts of hazardous wastes accumulated (chemical. biological, radioactive)"),
                  SubTaskItem(
                      key: Key('9'),
                      label:
                          "d. Accumulation start date greater than one year"),
                  TaskItem(
                      key: Key('10'),
                      label: "48. Sharps, Broken Glass, Empty Containers:"),
                  SubTaskItem(
                      key: Key('11'),
                      label:
                          "a. Sharps containers not used or disposed of improperly"),
                  SubTaskItem(
                      key: Key('12'),
                      label: "b. Broken Glass not placed in proper receptacle"),
                  SubTaskItem(
                      key: Key('13'),
                      label:
                          "c. Failed to triple rinse and remove/mark out labels of empty chemical containers"),
                  TaskItem(
                      key: Key('14'), label: "49. Mercury/Chemical Spills:"),
                  SubTaskItem(
                      key: Key('15'),
                      label:
                          "a. Broken mercury thermometer not contained or labeled"),
                  SubTaskItem(
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
                child: Buttons(),
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
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('next'),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PersonalProtection(
                      title: "",
                      key: Key('personal protection'),
                    )));
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
