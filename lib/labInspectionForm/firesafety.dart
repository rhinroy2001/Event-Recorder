import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/signspostings.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class FireSafety extends StatefulWidget {
  const FireSafety({super.key, required this.title});
  final String title;

  @override
  State<FireSafety> createState() => FireSafetyState();
}

class FireSafetyState extends State<FireSafety> {
  // final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    data.fireSafetyController.addListener(() {
      data.commentsFireSafety = data.fireSafetyController.text;
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
            padding: const EdgeInsets.all(25),
            child: Flex(direction: Axis.horizontal, children: [
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //body:
                    Column(
                      children: [
                        Text("General Fire Safety and Housekeeping",
                            style: TextStyle(fontSize: 25)),
                        TaskItem(
                            key: Key('1'),
                            label:
                                "1. Aisles and walkways not free of tripping hazards"),

                        TaskItem(
                            key: Key('2'),
                            label:
                                "2. High shelves and/or cabinet tops have items which may fall and injure someone"),

                        TaskItem(
                            key: Key('3'),
                            label:
                                "3. Empty containers, boxes and broken equipment not promptly discarded"),
                        TaskItem(
                            key: Key('4'),
                            label:
                                "4. Emergency exit or egress route blocked or poorly accessible"),
                        TaskItem(
                            key: Key('5'),
                            label:
                                "5. Power cord found in poor condition or not tie wrapped"),
                        TaskItem(
                            key: Key('6'),
                            label:
                                "6. Energized electric panel uncovered and/or blocked"),
                        TaskItem(
                            key: Key('7'),
                            label:
                                "7. Portable elctric heater used in the laboratory"),
                        TaskItem(
                            key: Key('8'),
                            label:
                                "8. Failure to remedate non-hazardous chemical release within a timely manner"),
                        TaskItem(
                            key: Key('9'),
                            label: "9. Laboratory doors propped open"),
                        TaskItem(
                            key: Key('10'),
                            label:
                                "10. Items stored within 18 inches of the ceiling"),
                        TaskItem(
                            key: Key('11'),
                            label:
                                "11. Workers do not use a safe platform for climbing"),
                        //TaskItem(label: ""),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 10),
                      child: Comments(
                        key: Key("firesafety"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 10),
                      child: Text('Take Photo'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: UploadPhoto(
                        key: Key('photo fire safety'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: ConfirmTask(
                          key: Key('12'), label: "This page is completed."),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Buttons(),
                    ),
                  ],
                ),
              ),
            ]),
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
                    SignsPostings(title: "", key: Key('signs and postings'))));
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
      NextButton()
    ]));
  }
}
