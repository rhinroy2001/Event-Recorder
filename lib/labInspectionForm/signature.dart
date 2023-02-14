import 'dart:developer';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:event_recorder/labInspectionForm/utility.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignatureForm(title: 'Lab Inspection Form'),
    );
  }
}

class SignatureForm extends StatefulWidget {
  const SignatureForm({super.key, required this.title});
  final String title;

  @override
  SignatureState createState() {
    return SignatureState();
  }
}

class SignatureState extends State<SignatureForm> {
  final _formKey = GlobalKey<FormState>();

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.blue,
    onDrawStart: () => log('onDrawStart called'),
    onDrawEnd: () => log('onDrawEnd called'),
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => log('Value changed'));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> exportImage(BuildContext context) async {
    final firebaseStorage = FirebaseStorage.instance;
    String signatureUrl = '';
    if (_controller.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        key: Key('snackbarPNG'),
        content: Text('No content'),
      ));
      return;
    }

    var image = await _controller.toPngBytes(height: 1000, width: 1000);
    if (image == null) {
      return;
    }
    if (!mounted) return;

    var snapshot =
        await firebaseStorage.ref().child('signature').putData(image);
    var downloadUrl = await snapshot.ref.getDownloadURL();
    setState(() {
      signatureUrl = downloadUrl;
    });
  }

  Future<void> exportSVG(BuildContext context) async {
    if (_controller.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        key: Key('snackbarSVG'),
        content: Text('No content'),
      ));
      return;
    }

    final SvgPicture data = _controller.toSVG()!;

    if (!mounted) return;

    await push(
        context,
        Scaffold(
            appBar: AppBar(
              title: const Text('SVG Image'),
            ),
            body: Center(
                child: Container(
              color: Colors.grey[300],
              child: data,
            ))));
  }

  @override
  Widget build(BuildContext context) {
    //var orientation = MediaQuery.of(context).orientation;
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        appBar: AppBar(title: const Text('Lab Inspection Form')),
        body: Column(children: <Widget>[
          Title(
            color: Colors.lightBlueAccent,
            child: Text('Sign Here', style: TextStyle(fontSize: 30)),
          ),
          Form(
              key: _formKey,
              child: OrientationBuilder(builder: (context, orientation) {
                return Signature(
                  controller: _controller,
                  key: const Key('signature'),
                  width: orientation == Orientation.portrait
                      ? width / 1.05
                      : width / 1.05,
                  height: orientation == Orientation.portrait
                      ? height / 2
                      : height / 2,
                  backgroundColor: Colors.lightBlueAccent,
                );
              }
                  // child: orientation == Orientation.portrait
                  //     ? Signature(
                  //         key: const Key('signature'),
                  //         controller: _controller,
                  //         width: width / 1.05,
                  //         height: height / 2,
                  //         backgroundColor: Colors.lightBlueAccent,
                  //       )
                  //     : Signature(
                  //         key: const Key('signature'),
                  //         controller: _controller,
                  //         width: width / 1.05,
                  //         height: height / 2,
                  //         backgroundColor: Colors.lightBlueAccent,
                  //       ),
                  )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                key: const Key('exportPNG'),
                icon: const Icon(Icons.image),
                color: Colors.blue,
                onPressed: () => exportImage(context),
                tooltip: 'Export Image',
              ),
              IconButton(
                icon: const Icon(Icons.undo),
                color: Colors.blue,
                onPressed: () {
                  setState(() => _controller.undo());
                },
                tooltip: 'Undo',
              ),
              IconButton(
                icon: const Icon(Icons.redo),
                color: Colors.blue,
                onPressed: () {
                  setState(() => _controller.redo());
                },
              ),
              IconButton(
                key: const Key('clear'),
                icon: const Icon(Icons.clear),
                color: Colors.blue,
                onPressed: () {
                  setState(() => _controller.clear());
                },
                tooltip: 'Clear',
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Buttons(),
              ),
            ],
          )
        ]));
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
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

// class NextButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         Navigator.push(
//             // will work with signsPostings.dart
//             context,
//             MaterialPageRoute(
//                 builder: (context) => const (title: "")));
//       },
//       child: Container(
//         color: Colors.blue,
//         padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
//         child: const Text(
//           "Done",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      BackButton(),
      SizedBox(width: 20),
      // SizedBox(width: 20),
      // NextButton(),
    ]));
  }
}
