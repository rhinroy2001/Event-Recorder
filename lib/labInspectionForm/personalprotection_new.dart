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
                  Text("Personal Protection", style: TextStyle(fontSize: 25)),
                  TaskItem(
                      isChecked: widget.data.fifty,
                      key: Key('1'),
                      label:
                          "50. Respirators used without proper clearance/fit testing/training"),
                  TaskItem(
                      isChecked: widget.data.fiftyone,
                      key: Key('2'),
                      label:
                          "51. Personal protective equipment (e.g., gloves, safety glasses, lab coat) unavailable quantity"),
                  TaskItem(
                      isChecked: widget.data.fiftytwo,
                      key: Key('3'),
                      label:
                          "52. Gloves, safety glasses, or other protective equipment not worn while working with hazardous chemicals/reagents"),
                  TaskItem(
                      isChecked: widget.data.fiftythree,
                      key: Key('4'),
                      label:
                          "53. Evidence of open toad shoes (sandals, etc.) worn in the laboratory"),
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
