import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/user_preference.dart';
import 'package:aameen/pages/PostAQuestion.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionAnswers extends StatelessWidget {
  final db = Firestore.instance;
  final fontColor = new Color(0xffffca99);

  @override
  Widget build(BuildContext context) {
    Widget _buildItem2(DocumentSnapshot doc) {
      return Column(
        children: <Widget>[
          Container(
            child: ListTile(
              title: Column(
                children: <Widget>[
                  new Text(
                    "Question",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  new Text(
                    doc.data['Question'],
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              subtitle: Column(
                children: <Widget>[
                  new Text(
                    "Answer",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  new Text(
                    doc.data['Answer'],
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: new Text("Questions"),
        backgroundColor: AppColors.golden,
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_box, size: 30.0,), onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => PostAQuestion()))),
        ],
      ),
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection('Questions').snapshots(),
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
          (record.preferences.getString('questions') == null)
              ? AlertDialog(
                  title: Column(
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        'assets/question.png',
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
                        record.preferences.setString('questions', 'hello');
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuestionAnswers()));
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
