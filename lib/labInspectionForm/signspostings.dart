import 'package:event_recorder/labInspectionForm/chemicalhygiene.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class SignsPostings extends StatefulWidget {
  const SignsPostings({super.key, required this.title});
  final String title;

  @override
  State<SignsPostings> createState() => SignsPostingsState();
}

class SignsPostingsState extends State<SignsPostings> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    data.signsAndPostingsController.addListener(() {
      data.commentsSignsAndPostings = data.signsAndPostingsController.text;
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
                    Text("Signs and Postings", style: TextStyle(fontSize: 25)),
                    TaskItem(
                        key: Key('12'),
                        label:
                            "12. Lab specific emergency contact list not updated or posted"),
                    TaskItem(
                        key: Key('13'),
                        label:
                            "13. Emergency Produres not posted by the laboratory phone"),
                    TaskItem(
                        key: Key('14'),
                        label:
                            "14. Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage\""),
                    TaskItem(
                        key: Key('15'),
                        label:
                            "15. Cabinets and/or storage areas not labeled properly"),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Comments(
                    key: Key("signsandpostings"),
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
            // will work with signsPostings.dart
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ChemicalHygiene(title: "", key: Key('chemical hygiene'))));
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
