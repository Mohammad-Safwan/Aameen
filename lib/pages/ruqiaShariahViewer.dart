import 'dart:async';
import 'dart:io';

import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:aameen/widgets/PDFScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class RuqiaViewer extends StatefulWidget {
  final String urll;
  final String name;
  RuqiaViewer({this.urll, this.name});
  @override
  _RuqiaViewerState createState() => new _RuqiaViewerState();
}

class _RuqiaViewerState extends State<RuqiaViewer> {
  String pathPDF = "";
  
  @override
  void initState() {
    super.initState();
    copyAsset().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
    Timer(Duration(seconds: 1), (){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (BuildContext context) => PDFScreen(pathPDF: pathPDF, name: widget.name,)));
    });
  }

  Future<File> copyAsset() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    File tempFile = File('$tempPath/copy.pdf');
    ByteData bd = await rootBundle.load(widget.urll);
    await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true);
    return tempFile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offline Book'), backgroundColor: AppColors.golden, centerTitle: true,),
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          Center(
            /*child: RaisedButton(
              child: Text("Open PDF"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PDFScreen(pathPDF: pathPDF)),
              ),
            ),*/
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
