import 'package:aameen/data/appColors.dart';
import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final String text;
  final Function functionn;
  const MyButton({Key key, this.functionn, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: functionn,
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
              child: Center(
                child: new Text(
                  text, 
                  style: new TextStyle(
                    fontSize: 26.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}