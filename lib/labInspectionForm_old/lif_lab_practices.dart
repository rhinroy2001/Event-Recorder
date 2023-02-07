//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class LabPractices extends StatefulWidget {
  const LabPractices({super.key});

  @override
  LabPracticesState createState() {
    return LabPracticesState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LabPracticesState extends State<LabPractices> {
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
          CheckBoxQuestion(theQuestion: "Gloves are work outside the lab"),
          CheckBoxQuestion(
              theQuestion:
                  "Evidence of personnel eating or drinking in the laboratory"),
          CheckBoxQuestion(
              theQuestion: "Food items stored with hazardous chemicals"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemicals not carried in secondary/spill-proof containers when transported through corridors/elevators")
        ],
      ),
    );
  }
}
