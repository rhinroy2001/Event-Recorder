import 'package:event_recorder/labInspectionForm/printable_data_one.dart';
import 'package:event_recorder/labInspectionForm_old/lif_general_fire_safety.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../main.dart';
import 'data.dart';

class PdfPreviewPage extends StatelessWidget {
  const PdfPreviewPage({Key? key, required this.title}) : super(key: key);
  final String title;

  Future<Uint8List> printDoc(Data data, PdfPageFormat format) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.nunitoExtraLight();
    final widgets = buildPrintableDataPageOne(data, font);
    pdf.addPage(pw.MultiPage(pageFormat: format, build: (context) => widgets));
    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: PdfPreview(build: (format) => printDoc(data, format)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data.reset();
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => MyHomePage(title: ""))));
        },
        child: Text("Done"),
      ),
    );
  }
}
