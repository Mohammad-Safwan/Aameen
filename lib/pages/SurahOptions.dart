import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/surahKahf_ayaat.dart';
import 'package:aameen/data/surahMulk_ayaat.dart';
import 'package:aameen/data/surahSajda_ayaat.dart';
import 'package:aameen/pages/Surahs.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurahOptions extends StatelessWidget {
  const SurahOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Surah Options"),
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
                    "Surah Mulk",
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
                                      SurahMulk(surahMulk)));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Text(
                    "Surah Kahaf",
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
                                      SurahMulk(surahKahaf)));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Text(
                    "Surah Sajda",
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
                                      SurahMulk(surahSajda)));
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
