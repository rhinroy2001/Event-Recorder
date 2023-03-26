import 'package:event_recorder/labInspectionForm/firesafety.dart';
import 'package:event_recorder/labInspectionForm/uploadphoto.dart';
import 'package:event_recorder/personalProtection.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({super.key, required this.title});
  final String title;

  @override
  State<GeneralInfo> createState() => GeneralInfoState();
}

class GeneralInfoState extends State<GeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Inspection Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                    Text("General Information", style: TextStyle(fontSize: 25)),
              ),
              TextFormField(
                key: Key('date'),
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Date',
                ),
              ),
              TextFormField(
                key: Key('faculty'),
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Faculty',
                ),
              ),
              TextFormField(
                key: Key('buildingRoom'),
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Building Room',
                ),
              ),
              TextFormField(
                key: Key('departmentDivision'),
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Department Division',
                ),
              ),
              TextFormField(
                key: Key('inspector'),
                decoration: const InputDecoration(
                  //labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Inspector',
                ),
              ),
              TextFormField(
                key: Key('phone'),
                decoration: const InputDecoration(
                  // labelStyle: TextStyle(fontSize: 24),
                  border: UnderlineInputBorder(),
                  labelText: 'Phone',
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Text('Take Photo'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: UploadPhoto(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConfirmTask(
                    key: Key('confirm'), label: "This page is completed."),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Buttons(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('back'),
      onPressed: () {
        Navigator.pop(context);
      },
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
        child: const Text(
          "Back",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key('next'),
      onPressed: () {
        Navigator.push(
            // will work with firesafety.dart
            context,
            MaterialPageRoute(
                builder: (context) =>
                    const FireSafety(key: Key('fire safety'), title: "")));
      },
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      BackButton(),
      SizedBox(width: 20),
      SizedBox(width: 20),
      NextButton(),
    ]));
  }
}
