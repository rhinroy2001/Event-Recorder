import 'package:event_recorder/labInspectionForm/safetyequipment_new.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

import 'data.dart';

class ChemicalUse extends StatefulWidget {
  const ChemicalUse({super.key, required this.title, required this.data});
  final String title;
  final Data data;

  @override
  State<ChemicalUse> createState() => ChemicalUseState();
}

class ChemicalUseState extends State<ChemicalUse> {
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
                  Text("Chemical Use and Storage",
                      style: TextStyle(fontSize: 25)),
                  TaskItem(
                      key: Key('26'),
                      label:
                          "26. Chemicals not properly segregated by hazard class"),

                  TaskItem(
                      key: Key('27'),
                      label:
                          "27. High-pressure gas cylinders unsecured, uncapped, or transported unsafely"),

                  TaskItem(
                      key: Key('28'),
                      label: "28. Hazardous chemicals stored above eye level"),

                  TaskItem(
                      key: Key('29'),
                      label:
                          "29. Fume hood used as storage area for hazardous chemicals"),
                  TaskItem(
                      key: Key('30'),
                      label:
                          "30. Excessive quantities of hazardous chemicals/reagents stored on lab bench top"),
                  TaskItem(
                      key: Key('31'),
                      label:
                          "31. Hazardous chemicals/reagents stored on the floor"),
                  TaskItem(
                      key: Key('32'),
                      label:
                          "32. Chemicals susceptible to peroxide formation are not dated/expired"),
                  TaskItem(
                      key: Key('33'),
                      label:
                          "33. Chemicals not labeled with the following information:"),
                  SubTaskItem(key: Key('33a'), label: "a. Full chemical name"),
                  SubTaskItem(
                      key: Key('33b'), label: "b. Chemical concentration"),
                  SubTaskItem(key: Key('33c'), label: "c. Hazard class"),
                  TaskItem(
                      key: Key('34'),
                      label:
                          "34. Storing an uncapped chemical container or allowing a chemical liquid to evaporate inside or outside the fume hood"),
                  TaskItem(
                      key: Key('35'),
                      label:
                          "35. Flammable liquids not stored in flammable storage cabinet"),
                  TaskItem(
                      key: Key('36'),
                      label:
                          "36. Flammable storage cabinets not located in safe area"),
                  TaskItem(
                      key: Key('37'),
                      label:
                          "37. Excessive quantities of flammable liquids present"),
                  TaskItem(
                      key: Key('38'),
                      label:
                          "38. Flammable liquids are stored in non-explosion-proof/non-flammable-proof refrigerator"),
                  TaskItem(
                      key: Key('39'),
                      label:
                          "39. Unattended chemicals not secured against unauthorized access"),
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
                child: UploadPhoto(key: Key('photo chemical use')),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(
                    key: Key('18'), label: "This page is completed."),
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
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SafetyEquipment(title: "", data: data)));
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
