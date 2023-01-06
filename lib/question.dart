// TODO: I would like to make a question class (or a few) to help maintain consistency with formatting and data validation.
// This may end up becoming a handful of classes for each type of question such as multiple choice, text box, etc







/* // Question is a class that can be used to standardize the way that we ask questions and validate data. 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatefulWidget{
    const Question({super.key});

    @override
    State<Question> createState() => _QuestionState();
    
}

class _QuestionState() extends State<Question>{
    final _formKey = GlobalKey<FormState>();
    
    String ask; // The text for the question being asked
    bool? mustAnswer = true; // Bool determining if the answer must be answered to progress
    int questionType; // 0 - text field, 1 - t/f, 2 - multichoice... may add more later like date, time, location, email etc

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Form(
                key: _formKey,
                        child: Scrollbar(
        child: Align(
            alignment: Alignment.topCenter,
            child: Card(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...[
                        TextFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            hintText: 'Enter a title...',
                            labelText: 'Title',
                          ),
                          onChanged: (value) {
                            setState(() {
                              title = value;
                            });
                          },
                        ),
                        ],
                    ],
                  ),
                ),
            ),
        ),
            ),
            ),
            ),
        ),
    }
} */