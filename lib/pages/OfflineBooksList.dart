import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/ruqiaShariahViewer.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfflineBooksOptions extends StatelessWidget {
  const OfflineBooksOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Offline Books"),
        centerTitle: true,
        backgroundColor: AppColors.golden,
      ),
      body: Stack(
        children: [
          BackGroundImage(
            url: 'assets/best.png',
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CupertinoButton(
                  color: AppColors.golden,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      "Holy Quran",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: (){
                     Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) => RuqiaViewer(urll: 'assets/pdf/Quran.pdf',name: 'Quraan Majeed',)));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Text(
                    "Hisnul Muslim",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) => RuqiaViewer(urll: 'assets/pdf/Muslim.pdf',name: 'Hisn ul Muslim',)));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Text(
                      "Namaz e Nabwi",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) => RuqiaViewer(urll: 'assets/pdf/Namaz.pdf',name: 'Namaz e Nabvi')));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
