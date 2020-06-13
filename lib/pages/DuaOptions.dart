import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/regularDuaien.dart';
import 'package:aameen/pages/DailyDuaien.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DuaOptions extends StatelessWidget {
  const DuaOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Dua Options"),
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
                    "Morning Prayers\n صبح کی دعائیں",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (BuildContext context) => DailyDuaien(
                          dua: morningDuas,
                        ),
                      ),
                    );
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Text(
                    "Evening Prayers\n شام کی دعائیں",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (BuildContext context) => DailyDuaien(
                          dua: eveningDuas,
                        ),
                      ),
                    );
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
