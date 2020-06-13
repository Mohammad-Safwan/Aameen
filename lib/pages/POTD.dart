import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class POTD extends StatefulWidget {
  @override
  _POTDState createState() => _POTDState();
}

class _POTDState extends State<POTD> {

  final db = Firestore.instance;

  @override
  Widget build(BuildContext context) {

    Widget _buildItem(DocumentSnapshot doc) {
      return Center(
        child: Image.network(
            doc.data['url'],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
        ),
      );
    }
    return Scaffold(
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder:
            (BuildContext ctxt, AsyncSnapshot<ConnectivityResult> snapShot) {
          if (!snapShot.hasData) 
            return Center(child: new Text("no result"),);
          var result = snapShot.data;
          switch (result) {
            case ConnectivityResult.mobile:
            case ConnectivityResult.wifi:
              return Scaffold(
                body: Stack(
                  children: <Widget>[
                    BackGroundImage(
                      url: 'assets/best.png'
                    ),
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                    StreamBuilder<QuerySnapshot>(
                            stream: db.collection('PostOfTheDay').snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Column(
                                  children: snapshot.data.documents
                                      .map((doc) => _buildItem(doc))
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
              break;
            case ConnectivityResult.none:
            default:
              return Scaffold(
                backgroundColor: new Color(0xff8a3751),
                body: Center(
                  child: Text(
                    "Please connect your \ndevice to internet.",
                    style: TextStyle(
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
