import 'package:event_recorder/labInspectionForm/data.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:event_recorder/labInspectionForm/generalinformation.dart';

buildPrintableData(Data data, var font) => pw.Padding(
    padding: const pw.EdgeInsets.all(12.00),
    child: pw.Column(children: [
      pw.Text(
          "SOUTHERN ILLINOIS UNIVERSITY-EDWARDSVILLE LABORATORY SAFETY INSPECTION FORM",
          style: pw.TextStyle(font: font)),
      pw.Row(children: [
        pw.Column(children: [
          pw.Text("FACULTY: ${data.faculty}"),
          pw.Text("DATE: ${data.date}")
        ]),
        pw.Column(children: [
          pw.Text("BUILDING/ROOM: ${data.room}"),
          pw.Text("INSPECTOR: ${data.inspector}")
        ]),
        pw.Column(children: [
          pw.Text("DEPARTMENT/DIVISION: ${data.department}"),
          pw.Text("PHONE: ${data.phone}")
        ])
      ]),
      pw.Row(children: [
        pw.SizedBox(
            height: 40,
            width: 200,
            child: pw.Text("SUMMARY OF INSPECTION FINDINGS")),
        pw.SizedBox(
            height: 40,
            width: 200,
            child: pw.Text("SUMMARY OF INSPECTION FINDINGS")),
      ])
    ]));
