import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:aameen/widgets/player_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DuroosHelper extends StatefulWidget {
  final String type;
  DuroosHelper({Key key, this.type}) : super(key: key);

  @override
  _DuroosHelperState createState() => _DuroosHelperState();
}

class _DuroosHelperState extends State<DuroosHelper> {
  final db = Firestore.instance;

  final fontColor = new Color(0xffffca99);

  @override
  Widget build(BuildContext context) {
    Widget _buildItem2(DocumentSnapshot doc) {
      return Column(
        children: <Widget>[
          Container(
            color: Colors.white54,
            child: ListTile(
              focusColor: AppColors.golden.withOpacity(0.33),
              title: Column(
                children: <Widget>[
                  new Text(
                    doc.data['Topic'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    doc.data['By'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    doc.data['Date'],
                    style: TextStyle(
                      color: AppColors.maroon,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              subtitle: PlayerWidget(url: doc.data['url']),
            ),
          ),
          Divider(
            height: 0.01,
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
            stream: db.collection(widget.type).snapshots(),
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
        ],
      ),
    );
  }
}
