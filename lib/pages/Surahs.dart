import 'package:aameen/data/surahMulk_ayaat.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';

class SurahMulk extends StatefulWidget {
  final List<Ayat> products;

  SurahMulk(
    this.products,
  );

  @override
  _SurahMulkState createState() => _SurahMulkState();
}

class _SurahMulkState extends State<SurahMulk> {
  double size = 25.0;
  @override
  Widget build(BuildContext context) {
    Color fontColor = Colors.black;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        BackGroundImage(url: 'assets/best.png'),
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    widget.products[index].arabic,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Personal',
                        fontSize: size,
                        fontWeight: FontWeight.w700,
                        color: fontColor),
                  ),
                  trailing: Container(
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: Center(
                      child: Text(
                        widget.products[index].ayatnum,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: fontColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.0
                        ),
                      ),
                    ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'اردو\n ترجمہ',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      (widget.products[index].urduState == true)
                                          ? Colors.blue
                                          : fontColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            if (widget.products[index].urduState == true) {
                              widget.products[index].urduState = false;
                            } else if (widget.products[index].urduState ==
                                false) {
                              widget.products[index].urduState = true;
                            }
                          });
                        },
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'English\nTranslation',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  color: (widget.products[index].englishState ==
                                          true)
                                      ? Colors.blue
                                      : fontColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            if (widget.products[index].englishState == true) {
                              widget.products[index].englishState = false;
                            } else if (widget.products[index].englishState ==
                                false) {
                              widget.products[index].englishState = true;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
                (widget.products[index].urduState == false)
                    ? Container()
                    : Column(
                        children: <Widget>[
                          Divider(
                            color: Colors.grey[400],
                          ),
                          ListTile(
                            title: Text(
                              widget.products[index].urdu,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: fontColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            subtitle: Text(
                              widget.products[index].ayatnum,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black54),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.cancel),
                              color: Colors.red,
                              onPressed: () {
                                setState(() {
                                  widget.products[index].urduState = false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                (widget.products[index].englishState == false)
                    ? Container()
                    : Column(
                        children: <Widget>[
                          Divider(
                            color: Colors.grey[400],
                          ),
                          ListTile(
                            title: Text(
                              widget.products[index].english,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: fontColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            subtitle: Text(
                              widget.products[index].ayatnum,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black54),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.cancel),
                              color: Colors.red,
                              onPressed: () {
                                setState(() {
                                  widget.products[index].englishState = false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                Divider(
                  height: 7.0,
                  color: fontColor,
                ),
              ],
            );
          },
          itemCount: widget.products.length,
        ),
      ]),
    );
  }
}
