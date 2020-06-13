import 'package:aameen/data/emotion_dua_returner.dart';
import 'package:aameen/data/emotionsList.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';

class UsefulDuas extends StatefulWidget {
  UsefulDuas({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UsefulDuasState createState() => _UsefulDuasState();
}

class _UsefulDuasState extends State<UsefulDuas> {
  Map<String, String> _result = {
    'dua': 'Surah Baqarah Ayat 186',
    'translation':
        'اور (اے پیغمبر) جب تم سے میرے بندے میرے بارے میں دریافت کریں تو (کہہ دو کہ) میں تو (تمہارے) پاس ہوں جب کوئی پکارنے والا مجھے پکارتا ہے تو میں اس کی دعا قبول کرتا ہوں تو ان کو چاہیئے کہ میرے حکموں کو مانیں اور مجھ پر ایمان لائیں تاکہ نیک رستہ پائیں'
  };
  var _emotions = emotions;
  var _currentItem = '[Select Emotion]';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackGroundImage(
            url: 'assets/wallpaper.jpg'
          ),
          Column(
            children: <Widget>[
              Container(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _result['dua'],
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Personal',
                      fontSize: 22.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _result['translation'],
                  style: TextStyle(
                      fontFamily: 'Personal',
                      fontSize: 18.0,
                      color: Colors.yellow[600]),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'How are you   \nfeeling:   ',
                      style: TextStyle(
                          color: new Color(0xff8a3751), fontSize: 16.0),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  DropdownButton<String>(
                    style: TextStyle(
                      color: new Color(0xff8a3751),
                      fontSize: 16.0,
                    ),
                    items: _emotions.map(
                      (String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Center(
                            child: Text(
                              dropDownStringItem,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (String newValueSelected) {
                      setState(() {
                        this._currentItem = newValueSelected;
                        _result = duaFinder(_currentItem);
                      });
                    },
                    value: _currentItem,
                  ),
                ],
              ),
              Container(
                height: 70.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
