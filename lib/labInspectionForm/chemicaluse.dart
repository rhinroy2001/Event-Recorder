import 'package:event_recorder/labInspectionForm/safetyequipment_new.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

class ChemicalUse extends StatefulWidget {
  const ChemicalUse({super.key, required this.title});
  final String title;

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
                      key: Key('1'),
                      label:
                          "26. Chemicals not properly segregated by hazard class"),

                  TaskItem(
                      key: Key('2'),
                      label:
                          "27. High-pressure gas cylinders unsecured, uncapped, or transported unsafely"),

                  TaskItem(
                      key: Key('3'),
                      label: "28. Hazardous chemicals stored above eye level"),

                  TaskItem(
                      key: Key('4'),
                      label:
                          "29. Fume hood used as storage area for hazardous chemicals"),
                  TaskItem(
                      key: Key('5'),
                      label:
                          "30. Excessive quantities of hazardous chemicals/reagents stored on lab bench top"),
                  TaskItem(
                      key: Key('6'),
                      label:
                          "31. Hazardous chemicals/reagents stored on the floor"),
                  TaskItem(
                      key: Key('7'),
                      label:
                          "32. Chemicals susceptible to peroxide formation are not dated/expired"),
                  TaskItem(
                      key: Key('8'),
                      label:
                          "33. Chemicals not labeled with the following information:"),
                  SubTaskItem(key: Key('9'), label: "a. Full chemical name"),
                  SubTaskItem(
                      key: Key('10'), label: "b. Chemical concentration"),
                  SubTaskItem(key: Key('11'), label: "c. Hazard class"),
                  TaskItem(
                      key: Key('12'),
                      label:
                          "34. Storing an uncapped chemical container or allowing a chemical liquid to evaporate inside or outside the fume hood"),
                  TaskItem(
                      key: Key('13'),
                      label:
                          "35. Flammable liquids not stored in flammable storage cabinet"),
                  TaskItem(
                      key: Key('14'),
                      label:
                          "36. Flammable storage cabinets not located in safe area"),
                  TaskItem(
                      key: Key('15'),
                      label:
                          "37. Excessive quantities of flammable liquids present"),
                  TaskItem(
                      key: Key('16'),
                      label:
                          "38. Flammable liquids are stored in non-explosion-proof/non-flammable-proof refrigerator"),
                  TaskItem(
                      key: Key('17'),
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
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SafetyEquipment(title: "")));
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
