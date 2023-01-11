//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class PersonalProtection extends StatefulWidget {
  const PersonalProtection({super.key});

  @override
  PersonalProtectionState createState() {
    return PersonalProtectionState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class PersonalProtectionState extends State<PersonalProtection> {
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
                  "Respirators used without proper clearance/fit testing/ training"),
          CheckBoxQuestion(
              theQuestion:
                  "Personal protective equipment (eg gloves, safety glasses, lab coat) unavailable or of limited quantity"),
          CheckBoxQuestion(
              theQuestion:
                  "Gloves, safety glasses, or other protective equipment not worn while working with hazardous chemicals/reagents"),
          CheckBoxQuestion(
              theQuestion:
                  "Evidence of open toed shoes (sandals, etc) work in the laboratory")
        ],
      ),
    );
  }
}
