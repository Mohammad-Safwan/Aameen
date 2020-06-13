import 'package:aameen/data/appColors.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
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
              title: new Text(
                doc.data['Topic'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    doc.data['By'],
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    doc.data['Venue'],
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    doc.data['Date'],
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                   doc.data['Time'],
                    style: TextStyle(
                      color: AppColors.blue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
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
        title: new Text("Upcoming Events"),
        backgroundColor: AppColors.golden,
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection('UpcomingEvents').snapshots(),
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
