import 'package:event_recorder/labInspectionForm/pdf_preview.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'printable_data.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class SaveBtnBuilder extends StatelessWidget {
  const SaveBtnBuilder({Key? key, required this.data}) : super(key: key);
  final Data data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              // will work with signsPostings.dart
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PdfPreviewPage(data: data, title: "PDF Preview")));
        },
        child: Text("Save as PDF"));
  }
}
