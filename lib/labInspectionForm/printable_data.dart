import 'package:event_recorder/labInspectionForm/data.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:event_recorder/labInspectionForm/generalinformation.dart';

buildPrintableData(Data data, var font) => pw.Padding(
    padding: const pw.EdgeInsets.all(4.00),
    child: pw.Column(children: [
      pw.Center(
          child: pw.Text(
              "SOUTHERN ILLINOIS UNIVERSITY-EDWARDSVILLE LABORATORY SAFETY INSPECTION FORM",
              style: pw.TextStyle(font: font))),
      pw.Flex(direction: pw.Axis.horizontal, children: [
        pw.Padding(
            padding: pw.EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: pw.Column(children: [
              pw.Flex(direction: pw.Axis.horizontal, children: [
                pw.Text("FACULTY: ${data.faculty}",
                    style: pw.TextStyle(font: font))
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
      ]),
      pw.Flex(direction: pw.Axis.horizontal, children: [
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
      ]),
      pw.Flex(direction: pw.Axis.vertical, children: [
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.one, name: "1"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "1. Aisles and walkways not free of tripping hazards",
                  style: pw.TextStyle(font: font))),
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.two, name: "2"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "2. High shelves and/or cabinet tops have items which may fall and injure someone",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.three, name: "3"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "3. Empty containers, boxes, and broken equipment not promptly discarded",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.four, name: "4"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "4. Emergency exit or egress route blocked or poorly accessible",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.five, name: "5"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "5. Power cord found in poort conditions or not tie wrapped",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.six, name: "6"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "6. Energized electrical panel uncovered and/or blocked",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.seven, name: "7"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "7. Portable electric heater used in the laboratory",
                  style: pw.TextStyle(font: font))),
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.eight, name: "8"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "8. Failure to remediate non-hazardous chemical release within a timely manner",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.nine, name: "9"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text("9. Laboratory doors propped open",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.ten, name: "10"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text("10. Items stored within 18 inches of the ceiling",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.eleven, name: "11"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "11. Workers do not use a safe platfrom for climbing",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.twelve, name: "12"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "12. Lab specific emergency contact list not updated or posted",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.thirteen, name: "13"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "13. Emergency Procedures not posted by the laboratory phone",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.fourteen, name: "14"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "14. Laboratory refrigerators/freezer/microwaves not labeled \"Not for Food Use /\"Not for Flammable Liquid Storage\"",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.fifteen, name: "15"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "15. Cabinets and/or storage areas not labeled properly",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.sixteen, name: "16"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text("16. Chemical Hygiene Plan unavailable",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.seventeen, name: "17"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text("17. MSDS's unavailable for lab employees",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.eighteen, name: "18"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "18. Laboratory Safety and Compliance training outdated",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.SizedBox(width: 25),
          pw.Checkbox(value: data.eighteenA, name: "18a"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "a. Annual Lab Specific Training Outline unavailable and/or attendance not documented",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.SizedBox(width: 25),
          pw.Checkbox(value: data.eighteenB, name: "18b"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "b. New Employees have not attended safety training",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.nineteen, name: "19"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text(
                  "19. Annual Lab Specific Training Outline unavailable and/or attendance not documented",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.twenty, name: "20"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text("20. Chemical inventory unavailable",
                  style: pw.TextStyle(font: font)))
        ]),
        pw.Flex(direction: pw.Axis.horizontal, children: [
          pw.Checkbox(value: data.twentyone, name: "21"),
          pw.Flexible(
              fit: pw.FlexFit.loose,
              child: pw.Text("21. Previous lab inspection not posted",
                  style: pw.TextStyle(font: font)))
        ]),
      ])
    ]));
