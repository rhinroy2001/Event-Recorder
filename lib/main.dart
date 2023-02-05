import 'package:event_recorder/labInspectionForm/generalInformation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'labInspectionForm/lif_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Environmental Health and Safety'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController mailToController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController emailBodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Previously Completed Forms',
                      style: TextStyle(fontSize: 25)),
                  TextButton(
                      onPressed: () {
                        // do something here
                      },
                      child: const Text('this will be the name of a form',
                          style: TextStyle(fontSize: 20)))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Send a follow up email',
                          style: TextStyle(fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: TextField(
                              controller: mailToController,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Mail to',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: TextField(
                              controller: subjectController,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Subject',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: SizedBox(
                            height: 60,
                            width: 300,
                            child: TextField(
                              controller: emailBodyController,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Email body',
                                hintText: 'someone@example.com',
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // Compose the email URL
                            var mailTo = mailToController.text;
                            var subject = subjectController.text;
                            var body = emailBodyController.text;
                            if (mailTo.isNotEmpty &&
                                subject.isNotEmpty &&
                                body.isNotEmpty) {
                              Uri url = Uri.parse(
                                  'mailto:$mailTo?subject=$subject&body=$body');
                              // Launch the URL
                              if (!await launchUrl(url)) {
                                throw 'Could not launch $url';
                              }
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        title: const Text('Error'),
                                        content: const Text(
                                            'All text fields must contain text'),
                                        actions: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(ctx).pop();
                                              },
                                              child: Container(
                                                color: Colors.blue,
                                                padding:
                                                    const EdgeInsets.all(15),
                                                child: const Text('okay',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ))
                                        ],
                                      ));
                            }
                          },
                          child: const Text('Send Email',
                              style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    const Text('Fill out a form',
                        style: TextStyle(fontSize: 25)),
                    ElevatedButton(
                      onPressed: () {
                        labInspection();
                      },
                      child: const Text('Lab Safety Inspection Form',
                          style: TextStyle(fontSize: 20)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Do something when the button is pressed
                      },
                      child: const Text('OSHA Form',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ])
                ],
              )
            ],
          )
        ]));
  }
}
