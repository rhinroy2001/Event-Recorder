//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class SafetyEquipment extends StatefulWidget {
  const SafetyEquipment({super.key});

  @override
  SafetyEquipmentState createState() {
    return SafetyEquipmentState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SafetyEquipmentState extends State<SafetyEquipment> {
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
              theQuestion:
                  "Eye wash station unavailable or not accessible/blocked"),
          CheckBoxQuestion(
              theQuestion: "Eye wash station weekly inspection not documented"),
          CheckBoxQuestion(
              theQuestion: "Safety shower unavailable or not accessible"),
          CheckBoxQuestion(
              theQuestion:
                  "First aid kit location ot known and/or not available"),
          CheckBoxQuestion(
              theQuestion:
                  "Fire extinguisher not readily accessible and/or inspected"),
          CheckBoxQuestion(
              theQuestion:
                  "Fume hood unavailable or not used when handling hazardous chemicals"),
          CheckBoxQuestion(theQuestion: "Fume hood not inspected annually"),
          CheckBoxQuestion(
              theQuestion:
                  "Chemical containers in fume hood not capped or in poor condition"),
          CheckBoxQuestion(
              theQuestion: "Performance of fume hood impeded by overcrowding"),
          CheckBoxQuestion(
              theQuestion: "In-house vacuum system not adequately protected"),
          CheckBoxQuestion(
              theQuestion: "Vacuum system flask not labeled and protected")
        ],
      ),
    );
  }
}
