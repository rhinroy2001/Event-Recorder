//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class HazWasteCompliance extends StatefulWidget {
  const HazWasteCompliance({super.key});

  @override
  HazWasteComplianceState createState() {
    return HazWasteComplianceState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class HazWasteComplianceState extends State<HazWasteCompliance> {
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
                  "Hazardous chemical waste - not labeled as waste or hazardous waste"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemical waste - all chemical components not listed"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemical waste - no accumulation start date"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemical waste storage - Not segregated by hazard class"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemical waste storage - greater than one container per chemical waste stream"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemical waste storage - excessive amounts of hazardous wastes accumulated (chemical, biological, radioactive)"),
          CheckBoxQuestion(
              theQuestion:
                  "Hazardous chemical waste storage - accumulation start date greater than 1 year"),
          CheckBoxQuestion(
              theQuestion:
                  "Sharps, Broken Glass, Empty Containers - Sharps containers not used or disposed of improperly"),
          CheckBoxQuestion(
              theQuestion:
                  "Sharps, Broken Glass, Empty Containers - broken glass not placed in proper receptacle"),
          CheckBoxQuestion(
              theQuestion:
                  "Sharps, Broken Glass, Empty Containers - failed to triple rinse and remove/mark out labels of empty chemical containers"),
          CheckBoxQuestion(
              theQuestion:
                  "Mercury/Chemical Spills - Broken mercury thermometer not contained or labeled"),
          CheckBoxQuestion(
              theQuestion:
                  "Mercury/Chemical Spills - Failure to promptly report a mercury/chemical release")
        ],
      ),
    );
  }
}
