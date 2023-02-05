import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'package:flutter_svg/svg.dart';
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
    penColor: Colors.red,
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
    if (_controller.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        key: Key('snackbarPNG'),
        content: Text('No content'),
      ));
      return;
    }

    final Uint8List? data =
        await _controller.toPngBytes(height: 1000, width: 1000);
    if (data == null) {
      return;
    }
    if (!mounted) return;

    await push(
        context,
        Scaffold(
            appBar: AppBar(
              title: const Text('PNG Image'),
            ),
            body: Center(
                child: Container(
              color: Colors.grey[300],
              child: Image.memory(data),
            ))));
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
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Signature(
            key: const Key('signature'),
            controller: _controller,
            width: 1000,
            height: 600,
            backgroundColor: Colors.lightBlueAccent,
          )),
      bottomNavigationBar: BottomAppBar(
          child: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
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
                    key: const Key('exportSVG'),
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
              ))),
    );
  }
}

class BackButton extends StatelessWidget {
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
