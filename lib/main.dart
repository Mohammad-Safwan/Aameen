import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.yellow[200], accentColor: AppColors.golden),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
