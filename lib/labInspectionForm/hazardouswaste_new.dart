import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/personalprotection_new.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

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
    data.hazardousWasteController.addListener(() {
      data.commentsHazardousWaste = data.hazardousWasteController.text;
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
                    Text("Hazardous Waste Compliance",
                        style: TextStyle(fontSize: 25)),
                    TaskItem(
                        key: Key('46'),
                        label: "46. Hazardous Chemical Waste Labeling"),
                    SubTaskItem(
                        key: Key('46a'),
                        label:
                            "a. Not labeled \"Waste\"  or \"Hazardous Waste\""),
                    SubTaskItem(
                        key: Key('46b'),
                        label: "b. All chemical components not listed"),
                    SubTaskItem(
                        key: Key('46c'),
                        label: "c. No accumulation start date"),
                    TaskItem(
                        key: Key('47'),
                        label: "47. Hazardous Chemical Waste Storage"),
                    SubTaskItem(
                        key: Key('47a'),
                        label: "a. Not segrated by hazard class"),
                    SubTaskItem(
                        key: Key('47b'),
                        label:
                            "b. Greater than one container per chemical waste stream"),
                    SubTaskItem(
                        key: Key('47c'),
                        label:
                            "c. Excessive amounts of hazardous wastes accumulated (chemical. biological, radioactive)"),
                    SubTaskItem(
                        key: Key('47d'),
                        label:
                            "d. Accumulation start date greater than one year"),
                    TaskItem(
                        key: Key('48'),
                        label: "48. Sharps, Broken Glass, Empty Containers:"),
                    SubTaskItem(
                        key: Key('48a'),
                        label:
                            "a. Sharps containers not used or disposed of improperly"),
                    SubTaskItem(
                        key: Key('48b'),
                        label:
                            "b. Broken Glass not placed in proper receptacle"),
                    SubTaskItem(
                        key: Key('48c'),
                        label:
                            "c. Failed to triple rinse and remove/mark out labels of empty chemical containers"),
                    TaskItem(
                        key: Key('49'), label: "49. Mercury/Chemical Spills:"),
                    SubTaskItem(
                        key: Key('49a'),
                        label:
                            "a. Broken mercury thermometer not contained or labeled"),
                    SubTaskItem(
                        key: Key('49b'),
                        label:
                            "b. Failure to promptly report a mercury/ chemical release"),
                    //TaskItem(label: ""),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Comments(
                    key: Key("hazardouswaste"),
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
                builder: (context) => PersonalProtection(
                    title: "", key: Key('personal protection'))));
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
