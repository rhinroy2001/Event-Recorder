import 'package:event_recorder/labInspectionForm/hazardouswaste_new.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:flutter/material.dart';
import 'package:event_recorder/labInspectionForm/task_item.dart';
import 'package:event_recorder/labInspectionForm/sub_task_item.dart';
import 'package:event_recorder/labInspectionForm/confirm_task.dart';
import 'package:event_recorder/labInspectionForm/comments.dart';

class SafetyEquipment extends StatefulWidget {
  const SafetyEquipment({super.key, required this.title});
  final String title;

  @override
  State<SafetyEquipment> createState() => SafetyEquipmentState();
}

class SafetyEquipmentState extends State<SafetyEquipment> {
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
                  Text("Safety Equipment and Engineering Controls",
                      style: TextStyle(fontSize: 25)),
                  TaskItem(key: Key('1'), label: "40. Eye Wash Station"),
                  SubTaskItem(
                      key: Key('2'),
                      label: "a. Unavailable or not accessible/blocked"),
                  SubTaskItem(
                      key: Key('3'),
                      label: "b. Weekly inspection not documented"),
                  TaskItem(
                      key: Key('4'),
                      label: "41. Safety shower unavailable or not accessible"),
                  TaskItem(
                      key: Key('5'),
                      label:
                          "42. First aid kit location not known and/or not available"),
                  TaskItem(
                      key: Key('6'),
                      label:
                          "43. Fire extinguisher not readily accessible and/or inspected"),
                  TaskItem(key: Key('7'), label: "44. Fume Hood"),
                  SubTaskItem(
                      key: Key('8'),
                      label:
                          "a. Unavailable or not used when handling hazardous chemicals"),
                  SubTaskItem(
                      key: Key('9'), label: "b. Not inspected annaually"),
                  SubTaskItem(
                      key: Key('10'),
                      label:
                          "c. Chemical containers not capped or in poor condition"),
                  SubTaskItem(
                      key: Key('11'),
                      label: "d. Performance impeded by overcrowding"),
                  TaskItem(key: Key('12'), label: "45. Vacuum System"),
                  SubTaskItem(
                      key: Key('13'),
                      label:
                          "a. In-house vacuum system not adequately protected"),
                  SubTaskItem(
                      key: Key('14'),
                      label:
                          "b. Vacuum system flask not labeled and protected"),
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
                  key: Key('photo safety equipment'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(
                    key: Key('15'), label: "This page is completed."),
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
                builder: (context) => const HazardousWaste(
                      title: "",
                      key: Key('hazardous waste'),
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
