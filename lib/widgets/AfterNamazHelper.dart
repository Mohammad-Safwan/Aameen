import 'package:aameen/data/appColors.dart';
import 'package:flutter/material.dart';

class AfterNamazHelper extends StatefulWidget {
  final String arabic;
  final String urdu;
  final String amount;
  bool tarjuma = false;
  final Function functionn;
  AfterNamazHelper({Key key, this.functionn, this.arabic, this.urdu, this.amount})
      : super(key: key);

  @override
  _AfterNamazHelperState createState() => _AfterNamazHelperState();
}

class _AfterNamazHelperState extends State<AfterNamazHelper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new GestureDetector(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 8.0),
                child: new Container(
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  padding: EdgeInsets.symmetric(horizontal: 3.0),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(30.0),
                    border: new Border.all(
                      color: AppColors.golden,
                      width: 1.5,
                    ),
                    color: AppColors.golden.withOpacity(0.5),
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                        ),
                        Center(
                          child: Text(
                            widget.amount,
                            style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        (!widget.tarjuma)
                            ? Container(
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                padding: EdgeInsets.symmetric(horizontal: 3.0),
                                child: Text(
                                  widget.arabic,
                                  style: new TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.symmetric(horizontal: 3.0),
                                padding: EdgeInsets.symmetric(horizontal: 3.0),
                                child: Text(
                                  widget.urdu,
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          child: Text(
            (widget.tarjuma) ? "Arabic Dua" : "Tarjuma",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              (widget.tarjuma) ? widget.tarjuma = false : widget.tarjuma = true;
            });
          },
          color: AppColors.maroon,
        ),
      ],
    );
  }
}
