import 'package:aameen/data/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class PDFScreen extends StatelessWidget {
  final String pathPDF;
  final String name;
  PDFScreen({this.pathPDF, this.name});

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text(name),
          backgroundColor: AppColors.golden,
          centerTitle: true,
        ),
        path: pathPDF);
  }
}
