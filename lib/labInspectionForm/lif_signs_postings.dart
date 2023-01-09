//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class SignsPostings extends StatefulWidget {
  const SignsPostings({super.key});

  @override
  SignsPostingsState createState() {
    return SignsPostingsState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class SignsPostingsState extends State<SignsPostings> {
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
                  "Lab specific emergency contact list not updated or posted"),
          CheckBoxQuestion(
              theQuestion:
                  "Emergency procedures not posted by the laboratory phone"),
          CheckBoxQuestion(
              theQuestion:
                  "Laboratory refrigerators/freezers/microwaves not labeled as \"Not for Food Use\"/\"Not flammable Liquid Storage\""),
          CheckBoxQuestion(
              theQuestion: "Cabinets and/or storage areas not labeled properly")
        ],
      ),
    );
  }
}
