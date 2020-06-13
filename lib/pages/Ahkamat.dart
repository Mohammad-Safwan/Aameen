import 'package:aameen/data/ahkamaatRef.dart';
import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/AhkamatDetails.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ahkamat extends StatefulWidget {
  final List<Hukum> products;

  Ahkamat(
    this.products,
  );

  @override
  _AhkamatState createState() => _AhkamatState();
}

class _AhkamatState extends State<Ahkamat> {
  @override
  Widget build(BuildContext context) {
    Color fontColor = Colors.black;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.golden,
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text(
              "How the Quran tells Muslims to behave",
              style: TextStyle(
                fontSize: 16.0
              ),
            ),
            Text(
              " قرآن میں مسلمانوں کے لئیے احکامات",
              style: TextStyle(
                fontSize: 16.0
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        BackGroundImage(url: 'assets/best.png'),
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        widget.products[index].name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.w700,
                            color: fontColor),
                      ),
                      Text(
                        widget.products[index].naam,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 21.0,
                            fontWeight: FontWeight.w700,
                            color: fontColor),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        widget.products[index].ref,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Personal',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: AppColors.maroon),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      RaisedButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (BuildContext context) => AhkamatDetails(
                                urdu: widget.products[index].urdu,
                                arabic: widget.products[index].arabic,
                                ref: widget.products[index].ref,
                              ),
                            ),
                          );
                        },
                        child: Text("Details", style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
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
