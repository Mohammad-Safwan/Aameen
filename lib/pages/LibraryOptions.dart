import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/OfflineBooksList.dart';
import 'package:aameen/pages/PDF.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryOptions extends StatelessWidget {
  const LibraryOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Library Options"),
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
                  
                  child: Text(
                    "Offline Books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      OfflineBooksOptions()));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Text(
                    "Online books",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) => PDF()));
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
