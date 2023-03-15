import 'package:event_recorder/labInspectionForm/generalInformation.dart';
// import 'package:event_recorder/labInspectionForm/generalinformation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'labInspectionForm/lif_main.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100.0;
    blockSizeVertical = screenHeight! / 100;
    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!) / 100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical!) / 100;
    orientation = _mediaQueryData!.orientation;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController mailToController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController emailBodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: SizeConfig.orientation == Orientation.portrait
          //     ? SizeConfig.safeBlockVertical! * 6
          //     : SizeConfig.safeBlockVertical! * 5,
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Container(
                // width: SizeConfig.safeBlockHorizontal! * 50,
                // height: SizeConfig.safeBlockVertical! * 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: const Text('Previously Completed Forms',
                          key: Key('previouslyCompletedForm'),
                          style: TextStyle(fontSize: 25)),
                    ),
                    TextButton(
                        onPressed: () {
                          // do something here
                        },
                        child: const Text('this will be the name of a form',
                            style: TextStyle(fontSize: 20)))
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  // width: SizeConfig.safeBlockHorizontal! * 50,
                  // height: SizeConfig.orientation == Orientation.portrait
                  //     ? SizeConfig.safeBlockVertical! * 47
                  //     : SizeConfig.safeBlockVertical! * 52,
                  // orientation == Orientation.landscape
                  //     ? height / 2.17
                  //     : height / 2.12,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            15,
                            0,
                            0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: const Text(
                              'Send a follow up email',
                              style: TextStyle(fontSize: 25),
                              key: Key('sendFollowUpEmail'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: SizedBox(
                          height: 60,
                          width: SizeConfig.screenWidth! / 2.1,
                          child: TextField(
                            key: Key('mailTo'),
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
                          width: SizeConfig.screenWidth! / 2.1,
                          child: TextField(
                            key: Key('subject'),
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
                          width: SizeConfig.screenWidth! / 2.1,
                          child: TextField(
                            key: Key('emailBody'),
                            controller: emailBodyController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Email body',
                              hintText: 'someone@example.com',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: ElevatedButton(
                          key: Key('sendEmail'),
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
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: const Text('Fill out a form',
                              key: Key('fillOutForm'),
                              style: TextStyle(fontSize: 25)),
                        ),
                        ElevatedButton(
                          key: Key('labSafetyInspectionForm'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const GeneralInfo(title: ""))));
                          },
                          child: const Text('Lab Safety Inspection Form',
                              style: TextStyle(fontSize: 20)),
                        ),
                        ElevatedButton(
                          key: Key('OSHAForm'),
                          onPressed: () {
                            // Do something when the button is pressed
                          },
                          child: const Text('OSHA Form',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ]),
                )
              ],
            )
          ],
        ));
  }
}
