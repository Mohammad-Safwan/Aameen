import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  final String url;
  BackGroundImage({Key key, this.url}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(url),
        ),
      ),
    );
  }
}
