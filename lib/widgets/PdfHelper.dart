import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/user_preference.dart';
import 'package:aameen/pages/PDF.dart';
import 'package:aameen/pages/PDFViewer.dart';
//import 'package:aameen/pages/viewPDF.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PdfHelper extends StatefulWidget {
  @override
  _PdfHelperState createState() => _PdfHelperState();
}

class _PdfHelperState extends State<PdfHelper> {
  final db = Firestore.instance;

  final fontColor = new Color(0xffffca99);

  @override
  Widget build(BuildContext context) {
    Widget _buildItem2(DocumentSnapshot doc) {
      return Column(
        children: <Widget>[
          Container(
            color: Colors.white24,
            child: ListTile(
                title: Column(
                  children: <Widget>[
                    new Text(
                      doc.data['name'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      doc.data['author'],
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                subtitle: RaisedButton(
                  onPressed: () async{
                      Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => PDFViewer(urll: doc.data['url'], name: doc.data['name'],)));
                  },
                  child: Text("view"),
                  color: AppColors.golden,
                  textColor: Colors.white,
                )),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection('PDFCollection').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  children: snapshot.data.documents
                      .map((doc) => _buildItem2(doc))
                      .toList(),
                );
              } else {
                return Container();
              }
            },
          ),
          (record.preferences.getString('book_outer') == null)
              ? AlertDialog(
                  title: Column(
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        'assets/book.png',
                        width:  MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height / 2,
                      )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  actions: <Widget>[
                    RaisedButton(
                      color: AppColors.golden,
                      textColor: Colors.white,
                      child: Text('Close'),
                      onPressed: () {
                        record.preferences.setString('book_outer', 'hello');
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PDF()));
                      },
                    )
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
