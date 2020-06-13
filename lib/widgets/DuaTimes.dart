import 'package:aameen/data/appColors.dart';
import 'package:flutter/material.dart';

class DuaHelper extends StatelessWidget {
  final String english;
  final String urdu;
  final String ref;
  const DuaHelper({Key key,  this.ref, this.english, this.urdu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
            child: new Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(30.0),
                  border: new Border.all(
                    color: AppColors.golden,
                    width: 1.5,
                  ),
                  color: AppColors.golden.withOpacity(0.5),
                ),
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      urdu,
                      style: new TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      english,
                      style: new TextStyle(
                          fontSize: 26.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      ref,
                      style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
