import 'package:aameen/data/appColors.dart';
import 'package:flutter/material.dart';

class DailyDuaHelper extends StatefulWidget {
  final String arabic;
  final String urdu;
  final int count;
  int remaining;
  bool tarjuma = false;
  final Function functionn;
  DailyDuaHelper({Key key, this.functionn, this.count, this.arabic, this.urdu})
      : super(key: key) {
    remaining = count;
  }

  @override
  _DailyDuaHelperState createState() => _DailyDuaHelperState();
}

class _DailyDuaHelperState extends State<DailyDuaHelper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new GestureDetector(
          onTap: () {
            setState(() {
              (widget.remaining > 0)
                  ? widget.remaining--
                  : widget.remaining = 0;
            });
          },
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                        ),
                        
                        Center(
                          child: (widget.remaining == 0)
                              ? Text(
                                  "You can move on to next dua.\nآپ اگلی دعا پر جاسکتے ہیں۔",
                                  style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : Text(
                                  "${widget.remaining} times remaining.",
                                  style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                        ),
                        (!widget.tarjuma)
                            ? Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
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
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
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
