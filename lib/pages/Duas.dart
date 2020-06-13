import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/dua_times.dart';
import 'package:aameen/widgets/DuaTimes.dart';
import 'package:aameen/pages/HomePage.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Duas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: new AppBar(
        backgroundColor: AppColors.golden,
        title: new Text("Best Times for Dua"),
        centerTitle: true,
      ),
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
                    SizedBox(height: size.height*0.1,),
                    SizedBox(
                      height: size.height * 0.6,
                      child: ListView.builder(itemBuilder: (BuildContext context, int index) { 
                        return new DuaHelper(
                          english: timings[index].english,
                          urdu: timings[index].urdu,
                          ref: timings[index].ref
                        );
                       },
                       scrollDirection: Axis.horizontal,
                       itemCount: 10,
                      ),
                    ),
                    SizedBox(
                      height: size.height*0.05,
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
