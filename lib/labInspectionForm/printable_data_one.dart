import 'package:event_recorder/labInspectionForm/data.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';

List<pw.Widget> buildPrintableDataPageOne(Data data, var font) {
  final ref = FirebaseStorage.instance.ref();
  List<pw.Widget> widgets = [];
  widgets.add(pw.Center(
      child: pw.Text(
          "SOUTHERN ILLINOIS UNIVERSITY-EDWARDSVILLE LABORATORY SAFETY INSPECTION FORM",
          style: pw.TextStyle(font: font))));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Padding(
        padding: pw.EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: pw.Column(children: [
          pw.Flex(direction: pw.Axis.horizontal, children: [
            pw.Text("FACULTY: ${data.faculty}", style: pw.TextStyle(font: font))
          ]),
          pw.Flex(direction: pw.Axis.horizontal, children: [
            pw.Text("DATE: ${data.date}", style: pw.TextStyle(font: font))
          ])
        ])),
    pw.Padding(
        padding: pw.EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: pw.Column(children: [
          pw.Flex(direction: pw.Axis.horizontal, children: [
            pw.Text("BUILDING/ROOM: ${data.room}",
                style: pw.TextStyle(font: font))
          ]),
          pw.Flex(direction: pw.Axis.horizontal, children: [
            pw.Text("INSPECTOR: ${data.inspector}",
                style: pw.TextStyle(font: font))
          ])
        ])),
    pw.Padding(
      padding: pw.EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: pw.Column(children: [
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Text("DEPARTMENT/DIVISION: ${data.department}",
              style: pw.TextStyle(font: font))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Text("PHONE: ${data.phone}", style: pw.TextStyle(font: font))
        ])
      ]),
    )
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("SUMMARY OF INSPECTION FINDINGS",
            style: pw.TextStyle(font: font))),
    pw.Checkbox(value: false, name: "A"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "No items of noncompliance or unsafe conditions were identified",
            style: pw.TextStyle(font: font))),
    pw.Checkbox(value: true, name: "B"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "Items of noncompliance or unsafe conditions were identified; SEE BELOW",
            style: pw.TextStyle(font: font))),
    pw.Checkbox(value: false, name: "C"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "Uncorrected repeat and/or excessive violations were identified: SEE BELOW",
            style: pw.TextStyle(font: font)))
  ]));

  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.one, name: "1"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("1. Aisles and walkways not free of tripping hazards",
            style: pw.TextStyle(font: font))),
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.two, name: "2"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "2. High shelves and/or cabinet tops have items which may fall and injure someone",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.three, name: "3"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "3. Empty containers, boxes, and broken equipment not promptly discarded",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.four, name: "4"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "4. Emergency exit or egress route blocked or poorly accessible",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.five, name: "5"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "5. Power cord found in poort conditions or not tie wrapped",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.six, name: "6"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("6. Energized electrical panel uncovered and/or blocked",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.seven, name: "7"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("7. Portable electric heater used in the laboratory",
            style: pw.TextStyle(font: font))),
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.eight, name: "8"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "8. Failure to remediate non-hazardous chemical release within a timely manner",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.nine, name: "9"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("9. Laboratory doors propped open",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.ten, name: "10"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("10. Items stored within 18 inches of the ceiling",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.eleven, name: "11"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("11. Workers do not use a safe platfrom for climbing",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twelve, name: "12"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "12. Lab specific emergency contact list not updated or posted",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirteen, name: "13"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "13. Emergency Procedures not posted by the laboratory phone",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fourteen, name: "14"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "14. Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage\"",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fifteen, name: "15"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("15. Cabinets and/or storage areas not labeled properly",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.sixteen, name: "16"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("16. Chemical Hygiene Plan unavailable",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.seventeen, name: "17"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("17. MSDS's unavailable for lab employees",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.eighteen, name: "18"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("18. Laboratory Safety and Compliance training outdated",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.eighteenA, name: "18a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "a. Annual Lab Specific Training Outline unavailable and/or attendance not documented",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.eighteenB, name: "18b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. New Employees have not attended safety training",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.nineteen, name: "19"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "19. Annual Lab Specific Training Outline unavailable and/or attendance not documented",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twenty, name: "20"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("20. Chemical inventory unavailable",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentyone, name: "21"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("21. Previous lab inspection not posted",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentytwo, name: "22"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("22. Gloves are work outside the lab",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentythree, name: "23"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "23. Evidence of personnel eating or drinking in the laboratory",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentyfour, name: "24"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("24. Food items stored with hazardous chemicals",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentyfive, name: "25"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "25. Hazardous chemicals not carried in secondary/spill-proof containers when transported through corridors/elevators",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentysix, name: "26"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("26. Chemicals not properly segregated by hazard class",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentyseven, name: "27"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "27. High-pressure gas cylinders unsecured, uncapped, or transported unsafely",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentyeight, name: "28"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("28. Hazardous chemicals stored above eye level",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.twentynine, name: "29"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "29. Fume hood used as storage area for hazardous chemicals",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirty, name: "30"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "30. Excessive quantities of hazardous chemicals/reagents stored on lab bench top",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtyone, name: "31"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("31. Hazardous chemicals/reagents stored on the floor",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtytwo, name: "32"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "32. Chemicals susceptible to peroxide formation are not dated/expired",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtythree, name: "33"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "33. Chemicals not labeled with the following information:",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.thirtythreeA, name: "33a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child:
            pw.Text("a. Full chemical name", style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.thirtythreeB, name: "33b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. Chemical concentration",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.thirtythreeC, name: "33c"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("c. Hazard class", style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtyfour, name: "34"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "34. Storing an uncapped chemical container or allowing a chemical liquid to evaporate inside or outside the fume hood",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtyfive, name: "35"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "35. Flammable liquids not stored in flammable storage cabinet",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtysix, name: "36"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "36. Flammable storage cabinets not located in safe area",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtyseven, name: "37"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("37. Excessive quantities of flammable liquids present",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtyeight, name: "38"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "38. Flammable liquids are stored in non-explosion-proof/non-flammable-proof refrigerator",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.thirtynine, name: "39"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "39. Unattended chemicals not secured against unauthorized access",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.forty, name: "40"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("40. Eye Wash Station", style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyA, name: "40a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("a. Unavailable or not accessible/blocked",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyB, name: "40b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. Weekly inspection not documented",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortyone, name: "41"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("41. Safety shower unavailable or not accessible",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortytwo, name: "42"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "42. First aid kit location not known and/or not available",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortythree, name: "43"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "43. Fire extinguisher not readily accessible and/or inspected",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortyfour, name: "44"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("44. Fume Hood", style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyfourA, name: "44a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "a. Unavailable or not used when handling hazardous chemicals",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyfourB, name: "44b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. Not inspected annaually",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyfourC, name: "44c"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("c. Chemical containers not capped or in poor condition",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyfourD, name: "44d"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("d. Performance impeded by overcrowding",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortyfive, name: "45"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("45. Vacuum System", style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyfiveA, name: "45a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("a. In-house vacuum system not adequately protected",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyfiveB, name: "45b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. Vacuum system flask not labeled and protected",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortysix, name: "46"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("46. Hazardous Chemical Waste Labeling",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysixA, name: "46a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("a. Not labeled \"Waste\"  or \"Hazardous Waste\"",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysixB, name: "46b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. All chemical components not listed",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysixC, name: "46c"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("c. No accumulation start date",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortyseven, name: "47"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("47. Hazardous Chemical Waste Storage",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysevenA, name: "47a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("a. Not segrated by hazard class",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysevenB, name: "47b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "b. Greater than one container per chemical waste stream",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysevenC, name: "47c"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "c. Excessive amounts of hazardous wastes accumulated (chemical. biological, radioactive)",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortysevenD, name: "47d"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("d. Accumulation start date greater than one year",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortyeight, name: "48"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("48. Sharps, Broken Glass, Empty Containers:",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyeightA, name: "48a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "a. Sharps containers not used or disposed of improperly",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyeightB, name: "48b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("b. Broken Glass not placed in proper receptacle",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortyeightC, name: "48c"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "c. Failed to triple rinse and remove/mark out labels of empty chemical containers",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fortynine, name: "49"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("49. Mercury/Chemical Spills:",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortynineA, name: "49a"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text("a. Broken mercury thermometer not contained or labeled",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.SizedBox(width: 25),
    pw.Checkbox(value: data.fortynineB, name: "49b"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "b. Failure to promptly report a mercury/ chemical release",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fifty, name: "50"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "50. Respirators used without proper clearance/fit testing/training",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fiftyone, name: "51"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "51. Personal protective equipment (e.g., gloves, safety glasses, lab coat) unavailable quantity",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fiftytwo, name: "52"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "52. Gloves, safety glasses, or other protective equipment not worn while working with hazardous chemicals/reagents",
            style: pw.TextStyle(font: font)))
  ]));
  widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
    pw.Checkbox(value: data.fiftythree, name: "53"),
    pw.Flexible(
        fit: pw.FlexFit.loose,
        child: pw.Text(
            "53. Evidence of open toad shoes (sandals, etc.) worn in the laboratory",
            style: pw.TextStyle(font: font)))
  ]));
  if (data.signature.isNotEmpty) {
    widgets.add(pw.Flex(direction: pw.Axis.horizontal, children: [
      pw.Flexible(
          fit: pw.FlexFit.loose,
          child: pw.Text("SIGNED: ", style: pw.TextStyle(font: font))),
      pw.Image(pw.MemoryImage(data.signature))
    ]));
  }
  widgets.add(pw.SizedBox(height: 50));
  widgets.add(pw.Text("COMMENTS:", style: pw.TextStyle(font: font)));
  widgets
      .add(pw.Text(data.commentsFireSafety, style: pw.TextStyle(font: font)));
  widgets.add(
      pw.Text(data.commentsSignsAndPostings, style: pw.TextStyle(font: font)));
  widgets.add(
      pw.Text(data.commentsChemicalHygiene, style: pw.TextStyle(font: font)));
  widgets
      .add(pw.Text(data.commentsLabPractices, style: pw.TextStyle(font: font)));
  widgets
      .add(pw.Text(data.commentsChemicalUse, style: pw.TextStyle(font: font)));
  widgets.add(
      pw.Text(data.commentsSafetyEquipment, style: pw.TextStyle(font: font)));
  widgets.add(
      pw.Text(data.commentsHazardousWaste, style: pw.TextStyle(font: font)));
  widgets.add(pw.Text(data.commentsPersonalProtection,
      style: pw.TextStyle(font: font)));
  widgets.add(pw.SizedBox(height: 50));
  widgets.add(pw.Text("PHOTOS", style: pw.TextStyle(font: font)));
  if (data.imageAsBytesList.isNotEmpty) {
    for (Uint8List img in data.imageAsBytesList) {
      widgets.add(pw.Image(pw.MemoryImage(img), height: 200, width: 200));
    }
  }
  return widgets;
}
