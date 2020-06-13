import 'dart:async';

import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/user_preference.dart';
import 'package:aameen/pages/HomePage.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool alreadyplaying = false;


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    record.checker();
    Timer(Duration(seconds: 4), () {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
            primaryColor: AppColors.blue, accentColor: AppColors.golden),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackGroundImage(
            url: "assets/splash_screen.png",
          ),
          new SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Container(),
                ),
                Container(
                  child: CircularProgressIndicator(),
                  margin: EdgeInsets.all(8.0),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
