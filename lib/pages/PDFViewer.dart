import 'dart:io';

import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:aameen/widgets/PDFScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class PDFViewer extends StatefulWidget {
  final String urll;
  final String name;
  PDFViewer({this.urll, this.name});
  @override
  _PDFViewerState createState() => new _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  String pathPDF = "";
  
  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
    
  }

  Future<File> createFileOfPdfUrl() async {
    final url = widget.urll;
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Online Books'), backgroundColor: AppColors.golden,),
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png'
          ),
          Center(
            child: RaisedButton(
              color: AppColors.golden,
              child: Text("Open PDF", style: TextStyle(color: Colors.white),),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PDFScreen(pathPDF: pathPDF, name: widget.name,)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
