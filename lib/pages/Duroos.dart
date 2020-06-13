import 'package:aameen/data/appColors.dart';
import 'package:flutter/material.dart';
import 'package:aameen/widgets/DuroosHelper.dart';
import 'package:connectivity/connectivity.dart';

class Duroos extends StatefulWidget {
  final String type;
  Duroos({Key key, this.type}) : super(key: key);

  @override
  _DuroosState createState() => _DuroosState();
}

class _DuroosState extends State<Duroos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.type.toUpperCase(),
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: AppColors.golden,
      ),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder:
            (BuildContext ctxt, AsyncSnapshot<ConnectivityResult> snapShot) {
          if (!snapShot.hasData) return Container();
          var result = snapShot.data;
          print(result);
          switch (result) {
            case ConnectivityResult.mobile:
            case ConnectivityResult.wifi:
              return Scaffold(
                body: DuroosHelper(type: widget.type,),
              );
              break;
            case ConnectivityResult.none:
            default:
              return Scaffold(
                backgroundColor: new Color(0xff8a3751),
                body: Center(
                  child: Text(
                    "Please connect your \ndevice to internet.",
                    style: TextStyle(
                      fontFamily: 'gorry',
                      fontSize: 22.0,
                      color: Colors.yellow[400],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
