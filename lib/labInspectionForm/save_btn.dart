import 'package:event_recorder/labInspectionForm/pdf_preview.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'printable_data_one.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:event_recorder/labInspectionForm/signature.dart';

class SaveBtnBuilder extends StatelessWidget {
  const SaveBtnBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              // will work with signsPostings.dart
              context,
              MaterialPageRoute(
                  builder: (context) => PdfPreviewPage(title: "PDF Preview")));
        },
        child: Text("Save as PDF"));
  }
}
