import 'package:event_recorder/labInspectionForm/chemicalhygiene.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class SignsPostings extends StatefulWidget {
  const SignsPostings({super.key, required this.title, required this.data});
  final String title;
  final Data data;

  @override
  State<SignsPostings> createState() => SignsPostingsState();
}

class SignsPostingsState extends State<SignsPostings> {
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
                  Text("Signs and Postings", style: TextStyle(fontSize: 25)),
                  TaskItem(
                      isChecked: widget.data.twelve,
                      key: Key('1'),
                      label:
                          "12. Lab specific emergency contact list not updated or posted"),
                  TaskItem(
                      isChecked: widget.data.thirteen,
                      key: Key('2'),
                      label:
                          "13. Emergency Produres not posted by the laboratory phone"),
                  TaskItem(
                      isChecked: widget.data.fourteen,
                      key: Key('3'),
                      label:
                          "14. Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage\""),
                  TaskItem(
                      isChecked: widget.data.fifteen,
                      key: Key('4'),
                      label:
                          "15. Cabinets and/or storage areas not labeled properly"),
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
                child: UploadPhoto(key: Key('photo signs and postings')),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(
                  label: "This page is completed.",
                  key: Key('5'),
                ),
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
  final Data data;
  NextButton(this.data);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('next'),
      onPressed: () {
        Navigator.push(
            // will work with signsPostings.dart
            context,
            MaterialPageRoute(
                builder: (context) => ChemicalHygiene(
                    title: "", key: Key('chemical hygiene'), data: data)));
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
