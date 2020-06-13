import 'package:aameen/data/afterNamazDua.dart';
import 'package:aameen/widgets/AfterNamazHelper.dart';
import 'package:aameen/pages/HomePage.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AfterNamazDuaien extends StatelessWidget {

  final List<AfterNamazDua> dua;
  const AfterNamazDuaien({Key key,  this.dua})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.9,
                      child: ListView.builder(itemBuilder: (BuildContext context, int index) { 
                        return new AfterNamazHelper(
                          arabic: dua[index].arabic,
                          urdu: dua[index].urdu,
                          amount: dua[index].amount
                        );
                       },
                       scrollDirection: Axis.horizontal,
                       itemCount: dua.length,
                      ),
                    ),
                    
                    Footer(size: size)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
