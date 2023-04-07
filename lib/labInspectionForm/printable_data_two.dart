import 'package:event_recorder/labInspectionForm/data.dart';
import 'package:pdf/widgets.dart' as pw;

buildPrintableDataPageTwo(Data data, var font) => pw.Padding(
    padding: pw.EdgeInsets.all(4),
    child: pw.Flex(direction: pw.Axis.vertical, children: [
      pw.Flex(direction: pw.Axis.horizontal, children: [
        pw.Checkbox(value: data.twentysix, name: "26"),
        pw.Flexible(
            fit: pw.FlexFit.loose,
            child: pw.Text(
                "26. Chemicals not properly segregated by hazard class",
                style: pw.TextStyle(font: font)))
      ]),
    ]));
