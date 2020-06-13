import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/Duroos.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DuroosOptions extends StatefulWidget {
  const DuroosOptions({Key key}) : super(key: key);

  @override
  _DuroosOptionsState createState() => _DuroosOptionsState();
}

class _DuroosOptionsState extends State<DuroosOptions> {

  String content;
  final GlobalKey<FormState> _accessKey = GlobalKey<FormState>();

  void _submitForm() {
    if (!_accessKey.currentState.validate()) {
      return;
    }
    _accessKey.currentState.save();
    setState(() {
      if(content == "12345"){
        {
          Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => Duroos(type: "Jumma",)));
        }
      }
    });
  }


  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Enter password here: ', filled: true, fillColor: AppColors.golden.withOpacity(0.33)),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty || value != "12345") {
          return 'Please enter the correct password';
        }
      },
      onSaved: (String value) {
        content = value;
      },
      maxLines: 1,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Al Fajr Duroos"),
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
                  
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      "Jumma Duroos \n جمعہ کا خطبات",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => Duroos(type: "Jumma",)));
                  },
                ),
                CupertinoButton(
                  color: AppColors.golden,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      "Madarsa Ibn e Abbas\n مدرسہ ابن عباس",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) => Duroos(type: "Madarsa",)));
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