import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/AddBook.dart';
import 'package:aameen/widgets/PdfHelper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class PDF extends StatefulWidget {
  PDF({Key key}) : super(key: key);

  @override
  _PDFState createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  final db = Firestore.instance;

  Future getPdfAndUpload() async {
    var file = await FilePicker.getFile(
        type: FileType.custom, allowedExtensions: ['pdf']);
    String fileName = basename(file.path);
    StorageReference _firebaseStorageRef =
        FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask uploadTask = _firebaseStorageRef.putFile(file);
    String downloadAddress =
        await (await uploadTask.onComplete).ref.getDownloadURL();
    DocumentReference ref =
        await db.collection('PDFCollection').add({'url': downloadAddress});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Books"),
        centerTitle: true,
        backgroundColor: AppColors.golden,
        actions: [
          IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (BuildContext context) => AddBook(),
                  ),
                );
              })
        ],
      ),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder:
            (BuildContext ctxt, AsyncSnapshot<ConnectivityResult> snapShot) {
          if (!snapShot.hasData) return Container();
          var result = snapShot.data;
          print(result);
          switch (result) {
            case ConnectivityResult.mobile:
            case ConnectivityResult.wifi:
              return Scaffold(
                body: PdfHelper(),
              );
              break;
            case ConnectivityResult.none:
            default:
              return Scaffold(
                backgroundColor: new Color(0xff8a3751),
                body: Center(
                  child: Text(
                    "Please connect your \ndevice to internet.",
                    style: TextStyle(
                        fontFamily: 'gorry',
                        fontSize: 22.0,
                        color: Colors.yellow[400]),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
