import 'package:event_recorder/labInspectionForm/signature.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class PersonalProtection extends StatefulWidget {
  const PersonalProtection(
      {super.key, required this.title, required this.data});
  final String title;
  final Data data;

  @override
  State<PersonalProtection> createState() => PersonalProtectionState();
}

class PersonalProtectionState extends State<PersonalProtection> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    data.personalProtectionController.addListener(() {
      data.commentsPersonalProtection = data.personalProtectionController.text;
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
                    Text("Personal Protection", style: TextStyle(fontSize: 25)),
                    TaskItem(
                        key: Key('50'),
                        label:
                            "50. Respirators used without proper clearance/fit testing/training"),
                    TaskItem(
                        key: Key('51'),
                        label:
                            "51. Personal protective equipment (e.g., gloves, safety glasses, lab coat) unavailable quantity"),
                    TaskItem(
                        key: Key('52'),
                        label:
                            "52. Gloves, safety glasses, or other protective equipment not worn while working with hazardous chemicals/reagents"),
                    TaskItem(
                        key: Key('53'),
                        label:
                            "53. Evidence of open toad shoes (sandals, etc.) worn in the laboratory"),
                    //TaskItem(label: ""),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Comments(
                    key: Key("personalprotection"),
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
                    key: Key('photo personal protection'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ConfirmTask(
                      key: Key('5'), label: "This page is completed."),
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
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('back'),
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
                builder: (context) => SignatureForm(
                    title: "", key: Key('signature form'), data: data)));
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
