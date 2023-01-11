// TODO: I would like to make a question class (or a few) to help maintain consistency with formatting and data validation.
// This may end up becoming a handful of classes for each type of question such as multiple choice, text box, etc

// Question is a class that can be used to standardize the way that we ask questions and validate data.
// TODO: Remove formatting maybe? Maybe that should be handled by the main part of lab inspection forms

import 'package:flutter/material.dart';

class CheckBoxQuestion extends StatefulWidget {
  const CheckBoxQuestion(
      {super.key, this.theQuestion = "This should be a question"});
  final String theQuestion;

  @override
  CheckBoxQuestionState createState() {
    return CheckBoxQuestionState();
  }
}

class CheckBoxQuestionState extends State<CheckBoxQuestion> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(widget.theQuestion, style: TextStyle(fontSize: 24))
                      ]))
            ]));
  }
}
