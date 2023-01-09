//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class GeneralFireSafety extends StatefulWidget {
  const GeneralFireSafety({super.key});

  @override
  GeneralFireSafetyState createState() {
    return GeneralFireSafetyState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class GeneralFireSafetyState extends State<GeneralFireSafety> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          CheckBoxQuestion(
              theQuestion: "Aisles and walkways not free of tripping hazards"),
          CheckBoxQuestion(
              theQuestion:
                  "High shelves and/or cabinet tops have items which may fall and injure someone"),
          CheckBoxQuestion(
              theQuestion:
                  "Empty containers, boes, and broken equipment not promptly discarded"),
          CheckBoxQuestion(
              theQuestion:
                  "Emergency exit or egress route blocked or poorly accessable"),
          CheckBoxQuestion(
              theQuestion:
                  "Power cord found in poor condition or not tie wrapped"),
          CheckBoxQuestion(
              theQuestion: "Energized electric panel uncovered and/or blocked"),
          CheckBoxQuestion(
              theQuestion: "Portable elecgric heater used in the laboratory"),
          CheckBoxQuestion(
              theQuestion:
                  "Failure to remediate non-hazardous chemical release within a timely manner"),
          CheckBoxQuestion(theQuestion: "Laboratory doors propped open"),
          CheckBoxQuestion(
              theQuestion: "Items stored within 18 inches of the ceiling"),
          CheckBoxQuestion(
              theQuestion: "Workers do not use a safe platform for climbing")
        ],
      ),
    );
  }
}
