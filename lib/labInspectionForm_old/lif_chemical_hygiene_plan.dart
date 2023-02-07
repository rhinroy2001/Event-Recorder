//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class ChemicalHygienePlan extends StatefulWidget {
  const ChemicalHygienePlan({super.key});

  @override
  ChemicalHygienePlanState createState() {
    return ChemicalHygienePlanState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class ChemicalHygienePlanState extends State<ChemicalHygienePlan> {
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
          CheckBoxQuestion(theQuestion: "Chemical Hygiene Plan unavailable"),
          CheckBoxQuestion(theQuestion: "MSDS's unavailable for lab employees"),
          CheckBoxQuestion(
              theQuestion:
                  "Laboratory Safety and Compliance training outdated"),
          CheckBoxQuestion(
              theQuestion: "New Employees have not attended safety training"),
          CheckBoxQuestion(
              theQuestion:
                  "Annual Lab Specific Training Outline unavailable and/or attendance not documented"),
          CheckBoxQuestion(theQuestion: "Chemical inventory unavailable"),
          CheckBoxQuestion(theQuestion: "Previous lab inspection not posted")
        ],
      ),
    );
  }
}
