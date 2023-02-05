import 'package:event_recorder/labInspectionForm/safetyequipment_new.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChemicalUse(title: 'Lab Inspection Form'),
    );
  }
}

class ChemicalUse extends StatefulWidget {
  const ChemicalUse({super.key, required this.title});
  final String title;

  @override
  State<ChemicalUse> createState() => ChemicalUseState();
}

class ChemicalUseState extends State<ChemicalUse> {
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
                      label:
                          "26. Chemicals not properly segregated by hazard class"),

                  TaskItem(
                      label:
                          "27. High-pressure gas cylinders unsecured, uncapped, or transported unsafely"),

                  TaskItem(
                      label: "28. Hazardous chemicals stored above eye level"),

                  TaskItem(
                      label:
                          "29. Fume hood used as storage area for hazardous chemicals"),
                  TaskItem(
                      label:
                          "30. Excessive quantities of hazardous chemicals/reagents stored on lab bench top"),
                  TaskItem(
                      label:
                          "31. Hazardous chemicals/reagents stored on the floor"),
                  TaskItem(
                      label:
                          "32. Chemicals susceptible to peroxide formation are not dated/expired"),
                  TaskItem(
                      label:
                          "33. Chemicals not labeled with the following information:"),
                  SubTaskItem(label: "a. Full chemical name"),
                  SubTaskItem(label: "b. Chemical concentration"),
                  SubTaskItem(label: "c. Hazard class"),
                  TaskItem(
                      label:
                          "34. Storing an uncapped chemical container or allowing a chemical liquid to evaporate inside or outside the fume hood"),
                  TaskItem(
                      label:
                          "35. Flammable liquids not stored in flammable storage cabinet"),
                  TaskItem(
                      label:
                          "36. Flammable storage cabinets not located in safe area"),
                  TaskItem(
                      label:
                          "37. Excessive quantities of flammable liquids present"),
                  TaskItem(
                      label:
                          "38. Flammable liquids are stored in non-explosion-proof/non-flammable-proof refrigerator"),
                  TaskItem(
                      label:
                          "39. Unattended chemicals not secured against unauthorized access"),
                  //TaskItem(label: ""),

                  Comments(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ConfirmTask(label: "This page is completed."),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Buttons(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  TaskItemState createState() => TaskItemState();
}

class TaskItemState extends State<TaskItem> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Text(widget.label),
      ],
    );
  }
}

class SubTaskItem extends StatefulWidget {
  final String label;

  SubTaskItem({Key? key, required this.label}) : super(key: key);

  @override
  SubTaskItemState createState() => SubTaskItemState();
}

class SubTaskItemState extends State<SubTaskItem> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 25),
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Text(widget.label),
      ],
    );
  }
}

class ConfirmTask extends StatefulWidget {
  final String label;

  ConfirmTask({Key? key, required this.label}) : super(key: key);

  @override
  ConfirmTaskState createState() => ConfirmTaskState();
}

class ConfirmTaskState extends State<ConfirmTask> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //SizedBox(width: 25),
        Checkbox(
            onChanged: (newValue) => setState(() => value = newValue),
            value: value),
        Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
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

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  CommentsState createState() {
    return CommentsState();
  }
}

class CommentsState extends State<Comments> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              key: _formKey,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Comment Box",
              ),
              minLines: 1,
              maxLines: 6,
            ),
          ],
        ));
  }
}
