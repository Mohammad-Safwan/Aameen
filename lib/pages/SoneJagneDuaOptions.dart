import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/sleepDua.dart';
import 'package:aameen/data/wakeupDua.dart';
import 'package:aameen/pages/DailyDuaien.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SoneJagneOptions extends StatelessWidget {
  const SoneJagneOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Daily Duas"),
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
                    "Azkar when you wake up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => DailyDuaien(dua: wakeUpDuas,)));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Text(
                    "Azkar before you go to sleep",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => DailyDuaien(dua: sleepDua,)));
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
