import 'dart:io';
import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:aameen/widgets/PDFScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class OfflineViewer extends StatefulWidget {
  final String urll;
  bool loaded;
  OfflineViewer({this.urll}){
    loaded = false;
  }
  @override
  _OfflineViewerState createState() => new _OfflineViewerState();
}

class _OfflineViewerState extends State<OfflineViewer> {
  String pathPDF = "";
  

  @override
  void initState() {
    super.initState();
    copyAsset().then((f) {
      setState(() {
        pathPDF = f.path;
        widget.loaded = true;
        print(pathPDF);
      });
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
    return (widget.loaded)
        ? Scaffold(
            appBar: AppBar(
              title: Text("Book"),
              backgroundColor: AppColors.golden,
              centerTitle: true,
            ),
            body: Stack(
              children: [
                BackGroundImage(
                  url: 'assets/best.png',
                ),
                Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          )
        : PDFScreen(
            pathPDF: pathPDF,
          );
  }
}
