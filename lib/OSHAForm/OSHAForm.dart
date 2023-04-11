import 'package:event_recorder/main.dart';
import 'package:flutter/material.dart';
import 'differentCheckBoxes.dart';

/*
OSHAForm.dart

-AppBar in the beginning is modified to have a the labels of the check boxes so 
  they are always visible when scrolling down or up.
-Inside a column, Group() is stated for each topic in "OSHA Form Contents.docx".
-Group() is a grouping of several widgets; four individual checkboxes for 
[N/A, Good, Okay, Bad], TaskItem's for possible citations, a comment box, and a 
  divider.
  -This requires two parameters, label (category/equipment from inpection form) 
    and option1 (the first or only possible citation). It also has three other 
    parameter that are optional: option2, option3, and option4 
    (other citations). Those can be easily increased if needed.
-Buttons() is a grouping of a back button and a done button.
-all checkboxes used are in differentCheckBoxes.dart file.

I wanted to have the citaions to appear when the Bad Checkbox is selected,
  but I could not implement or figure it out.
*/

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
      home: const OSHA(title: 'OSHA Form'),
    );
  }
}

class OSHA extends StatefulWidget {
  const OSHA({super.key, required this.title});
  final String title;

  @override
  State<OSHA> createState() => OSHAState();
}

class OSHAState extends State<OSHA> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text("OSHA Form"),
              Spacer(),
              Text("N/A"),
              SizedBox(width: 20),
              Text("Good"),
              SizedBox(width: 20),
              Text("Okay"),
              SizedBox(width: 20),
              Text("Bad"),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Grouping(
                      label: "Tripping Hazards",
                      option1:
                          "1910.22(a)(1) - All places of employment, passageways, storerooms, service rooms, and walking-working surfaces are kept in a clean, orderly, and sanitary condition.",
                      option2:
                          "1910.22(a)(3) - Walking-working surfaces are maintained free of hazards such as sharp or protruding objects, loose boards, corrosion, leaks, spills, snow, and ice.",
                    ),
                    Grouping(
                      label: "Falling Objects",
                      option1:
                          "1910.28(c) - Protection from falling objects. When an employee is exposed to falling objects, the employer must ensure that each employee wears head protection that meets the requirements of subpart I of this part. In addition, the employer must protect employees from falling objects.",
                    ),
                    Grouping(
                      label: "Broken Equipment",
                      option1:
                          "1910.334(c)(2) - Visual inspection. Test instruments and equipment and all associated test leads, cables, power cords, probes, and connectors shall be visually inspected for external defects and damage before the equipment is used. If there is a defect or evidence of damage that might expose an employee to injury, the defective or damaged item shall be removed from service, and no employee may use it until repairs and tests necessary to render the equipment safe have been made.",
                      option2:
                          "1910.303(b)(7)(iii) - Internal parts of electrical equipment, including busbars, wiring terminals, insulators, and other surfaces, may not be damaged or contaminated by foreign materials such as paint, plaster, cleaners, abrasives, or corrosive residues.",
                      option3:
                          "1910.303(b)(7)(iv) - There shall be no damaged parts that may adversely affect safe operation or mechanical strength of the equipment, such as parts that are broken, bent, cut, or deteriorated by corrosion, chemical action, or overheating.",
                    ),
                    Grouping(
                      label: "Emergency Exit Route",
                      option1:
                          "1910.37(a)(3) - Exit routes must be free and unobstructed. No materials or equipment may be placed, either permanently or temporarily, within the exit route. The exit access must not go through a room that can be locked, such as a bathroom, to reach an exit or exit discharge, nor may it lead into a dead-end corridor. Stairs or a ramp must be provided where the exit route is not substantially level.",
                    ),
                    Grouping(
                      label: "Power Cord Management",
                      option1:
                          "1910.303(b) - Examination, installation, and use of equipment.",
                      option2:
                          "1910.305(a)(2)(x) - Flexible cords and cables shall be protected from accidental damage, as might be caused, for example, by sharp corners, projections, and doorways or other pinch points.",
                    ),
                    Grouping(
                      label: "Electrical Panel",
                      option1:
                          "1910.303(g)(1)(i) - Working space for equipment likely to require examination, adjustment, servicing, or maintenance while energized shall comply with the following dimensions, except as required or permitted elsewhere in this subpart.",
                      option2:
                          "1910.305(b)(3)(iii) - Covers for boxes shall be permanently marked \"HIGH VOLTAGE.\" The marking shall be on the outside of the box cover and shall be readily visible and legible.",
                    ),
                    Grouping(
                      label: "Safe platform for climbing",
                      option1: "1910.23(c) - Portable ladders.",
                    ),
                    Grouping(
                      label: "Correct Labeling",
                      option1:
                          "1910.1450(h)(1)(i) or 1910.1200(b)(3)(i) - Employers shall ensure that labels on incoming containers of hazardous chemicals are not removed or defaced.",
                      option2:
                          "1910.1200(f)(9) - The employer shall not remove or deface existing labels on incoming containers of hazardous chemicals, unless the container is immediately marked with the required information.",
                      option3:
                          "1910.1200(f)(10) - The employer shall ensure that workplace labels or other forms of warning are legible, in English, and prominently displayed on the container, or readily available in the work area throughout each work shift. Employers having employees who speak other languages may add the information in their language to the material presented, as long as the information is presented in English as well.",
                      option4:
                          "1910.1200(i)(1) - The chemical manufacturer, importer, or employer may withhold the specific chemical identity, including the chemical name, other specific identification of a hazardous chemical, or the exact percentage (concentration) of the substance in a mixture, from the safety data sheet.",
                    ),
                    Grouping(
                      label: "Chemical Hygiene Plan",
                      option1: "1910.1450(e) Chemical hygiene plan - General",
                    ),
                    Grouping(
                      label: "Training",
                      option1: "1910.132(f) Training. (PPE)",
                      option2:
                          "1910.1450(f)(1) (Chemical Hazards) - The employer shall provide employees with information and training to ensure that they are apprised of the hazards of chemicals present in their work area.",
                    ),
                    Grouping(
                      label: "Posting for previous inspection",
                      option1:
                          "1910.132(d)(2) - The employer shall verify that the required workplace hazard assessment has been performed through a written certification that identifies the workplace evaluated; the person certifying that the evaluation has been performed; the date(s) of the hazard assessment; and, which identifies the document as a certification of hazard assessment.",
                    ),
                    Grouping(
                      label: "Transporting chemicals",
                      option1:
                          "1910.1030(d)(2)(xiii)(B) - If outside contamination of the primary container occurs, the primary container shall be placed within a second container which prevents leakage during handling, processing, storage, transport, or shipping and is labeled or color-coded according to the requirements of this standard.",
                    ),
                    Grouping(
                      label: "Fume Hood",
                      option1:
                          "1910.1450(e)(3)(iii) - A requirement that fume hoods and other protective equipment are functioning properly and specific measures that shall be taken to ensure proper and adequate performance of such equipment.",
                    ),
                    Grouping(
                      label: "Eye Wash Station",
                      option1:
                          "1910.151(c) - Where the eyes or body of any person may be exposed to injurious corrosive materials, suitable facilities for quick drenching, or flushing of the eyes and body shall be provided within the work area for immediate emergency use.",
                    ),
                    Grouping(
                      label: "Safety Shower",
                      option1:
                          "1910.151(c) - Where the eyes or body of any person may be exposed to injurious corrosive materials, suitable facilities for quick drenching or flushing of the eyes and body shall be provided within the work area for immediate emergency use.",
                    ),
                    Grouping(
                      label: "First Aid Kit",
                      option1:
                          "1910.151(b) - In the absence of an infirmary, clinic, or hospital in near proximity to the workplace which is used for the treatment of all injured employees, a person or persons shall be adequately trained to render first aid. Adequate first aid supplies shall be readily available.",
                    ),
                    Grouping(
                      label: "Fire Extinquisher",
                      option1:
                          "1910.157(c)(1) - The employer shall provide portable fire extinguishers and shall mount, locate and identify them so that they are readily accessible to employees without subjecting the employees to possible injury.",
                      option2:
                          "1910.157(e) - Inspection, maintenance, and testing.",
                    ),
                    Grouping(
                      label: "Sharps, Broken Glass, and Empty Containers",
                      option1:
                          "1910.1030(d)(2)(viii) - Immediately or as soon as possible after use, contaminated reusable sharps shall be placed in appropriate containers until properly reprocessed.",
                    ),
                    Grouping(
                      label: "Respirators",
                      option1:
                          "1910.134(c) - Respiratory protection program. This paragraph requires the employer to develop and implement a written respiratory protection program with required worksite-specific procedures and elements for required respirator use. The program must be administered by a suitably trained program administrator. In addition, certain program elements may be required for voluntary use to prevent potential hazards associated with the use of the respirator. The Small Entity Compliance Guide contains criteria for the selection of a program administrator and a sample program that meets the requirements of this paragraph. Copies of the Small Entity Compliance Guide will be available on or about April 8, 1998 from the Occupational Safety and Health Administration's Office of Publications, Room N 3101, 200 Constitution Avenue, NW, Washington, DC, 20210 (202-219-4667).",
                      option2:
                          "1910.1450(i) - Use of respirators. Where the use of respirators is necessary to maintain exposure below permissible exposure limits, the employer shall provide, at no cost to the employee, the proper respiratory equipment. Respirators shall be selected and used in accordance with the requirements of 29 CFR 1910.134.",
                    ),
                    Grouping(
                      label: "Personal Protection Equipment",
                      option1:
                          "1910.132(a) - Application. Protective equipment, including personal protective equipment for eyes, face, head, and extremities, protective clothing, respiratory devices, and protective shields and barriers, shall be provided, used, and maintained in a sanitary and reliable condition wherever it is necessary by reason of hazards of processes or environment, chemical hazards, radiological hazards, or mechanical irritants encountered in a manner capable of causing injury or impairment in the function of any part of the body through absorption, inhalation or physical contact.",
                      option2:
                          "1910.132(e) - Defective and damaged equipment. Defective or damaged personal protective equipment shall not be used.",
                    ),
                    Buttons(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Grouping extends StatefulWidget {
  final String label;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  // add new parameters here

  Grouping(
      {Key? key,
      required this.label,
      required this.option1,
      this.option2 = "",
      this.option3 = "",
      this.option4 = ""}) // this.option = "" allows for an optional parameter
      // add parameter here inside brackets above
      : super(key: key);

  @override
  GroupingState createState() => GroupingState();
}

class GroupingState extends State<Grouping> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Row(
            children: [
              // For tests to work, change fontsize to 10 (original size 25)
              Text(widget.label,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Spacer(),
              NA_CheckBox(),
              SizedBox(width: 30),
              Good_CheckBox(),
              SizedBox(width: 30),
              Okay_CheckBox(),
              SizedBox(width: 30),
              Bad_CheckBox(),
            ],
          ),
        ),
        TaskItem(label: widget.option1),
        // add an if statment for a new option parameter if one is added
        if (widget.option2.length > 0) TaskItem(label: widget.option2),
        if (widget.option3.length > 0) TaskItem(label: widget.option3),
        if (widget.option4.length > 0) TaskItem(label: widget.option4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Comments(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: Divider(
            height: 2,
            thickness: 2,
            color: Colors.black,
          ),
        ),
      ],
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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: const Text(
          "Back",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}

class DoneButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: Key("Done"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MyHomePage(title: "")));
      },
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: const Text(
          "Done",
          style: TextStyle(color: Colors.white, fontSize: 15),
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
      Spacer(),
      DoneButton(),
    ]));
  }
}

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  CommentsState createState() {
    return CommentsState();
  }
}

class CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: Key('CommentBox'),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Comments/Explanation",
              ),
              minLines: 1,
              maxLines: 6,
            ),
          ],
        ));
  }
}
