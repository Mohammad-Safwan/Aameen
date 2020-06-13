import 'package:aameen/widgets/upcoming_events_helper.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class UpcomingEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                body: ProductListPage(),
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
                        color: Colors.yellow[400]),
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
///////////////////////////////////////////////////////////////////////////////////////////
