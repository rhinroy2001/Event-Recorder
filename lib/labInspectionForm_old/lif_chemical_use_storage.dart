//TODO: (Maybe) I would kind of like to make these widgets read questions in from a txt file

import 'package:flutter/material.dart';
import '../question_checkbox.dart';

// Create a Form widget.
class ChemicalUseStorage extends StatefulWidget {
  const ChemicalUseStorage({super.key});

  @override
  ChemicalUseStorageState createState() {
    return ChemicalUseStorageState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class ChemicalUseStorageState extends State<ChemicalUseStorage> {
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
              theQuestion: "Chemicals not properly segregated by hazard class"),
          CheckBoxQuestion(
              theQuestion:
                  "High-pressure gas cylinders unsecured, uncapped, or transported unsafely"),
          CheckBoxQuestion(
              theQuestion: "Hazardous chemicals stored above eye level"),
          CheckBoxQuestion(
              theQuestion:
                  "Fume hood used as storage area for hazardous chemicals"),
          CheckBoxQuestion(
              theQuestion:
                  "Excessive quantities of hazardous chemicals/reagents stored on lab bench top"),
          CheckBoxQuestion(
              theQuestion: "Hazardous chemicals/reagents stored on the floor"),
          CheckBoxQuestion(
              theQuestion:
                  "Chemicals susceptible to peroxide formation are not dated/expired"),
          CheckBoxQuestion(
              theQuestion:
                  "Chemicals not labeled with the following information: Full chemical name, Chemical concentration, Hazard class"),
          CheckBoxQuestion(
              theQuestion:
                  "Storing an uncapped chemical container or allowing a chemical liquid to evaporate inside or outside the fume hood"),
          CheckBoxQuestion(
              theQuestion:
                  "Flammable liquids not stored in flammable storage cabinet"),
          CheckBoxQuestion(
              theQuestion:
                  "Flammable storage cabinets not located in safe area"),
          CheckBoxQuestion(
              theQuestion: "Excessive quantities of flammable liquids present"),
          CheckBoxQuestion(
              theQuestion:
                  "Flammable liquids are stored in non-explosion-proof/non-flammable-proof refrigerator"),
          CheckBoxQuestion(
              theQuestion:
                  "Unattended chemicals not secured against unauthorized access")
        ], // ListView Children
      ),
    );
  }
}
