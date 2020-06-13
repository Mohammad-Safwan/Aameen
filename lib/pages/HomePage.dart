import 'package:aameen/data/afterNamazDua.dart';
import 'package:aameen/data/ahkamaatRef.dart';
import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/masnoonDua.dart';
import 'package:aameen/data/user_preference.dart';
import 'package:aameen/pages/AfterNamazAzkar.dart';
import 'package:aameen/pages/Ahkamat.dart';
import 'package:aameen/pages/DuaOptions.dart';
import 'package:aameen/pages/Duas.dart';
import 'package:aameen/pages/DuroodZikrFazail.dart';
import 'package:aameen/pages/DuroosOptions.dart';
import 'package:aameen/pages/LibraryOptions.dart';
import 'package:aameen/pages/MasnoonDuaien.dart';
import 'package:aameen/pages/Questions.dart';
import 'package:aameen/pages/SoneJagneDuaOptions.dart';
import 'package:aameen/pages/SurahOptions.dart';
import 'package:aameen/pages/UsefulDuas.dart';
import 'package:aameen/pages/complaints_advice.dart';
import 'package:aameen/pages/potd.dart';
import 'package:aameen/pages/ruqiaShariahViewer.dart';
import 'package:aameen/pages/upcoming_events.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:aameen/widgets/MyButton.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  _regiter() {
    _firebaseMessaging
        .getToken()
        .then((value) => print('THE VALUE OF TOKEN :::' + value));
  }

  getMessage() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) {
        print(message);
      },
      onResume: (Map<String, dynamic> message) {
        print(message);
      },
      onLaunch: (Map<String, dynamic> message) {
        print(message);
      },
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                    new SizedBox(
                      height: 20.0,
                    ),
                    new SizedBox(
                      height: size.height * 0.15,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          padding: EdgeInsetsDirectional.only(top: 7.0),
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/salam.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: size.height * 0.6,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          new SizedBox(
                            width: size.width * 0.20,
                          ),
                          new MyButton(
                            text: 'Useful Duas\nمفید دعائیں',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      UsefulDuas()));
                            },
                          ),
                          new MyButton(
                            text: 'Fazail e zikr',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      Afzaliat()));
                            },
                          ),
                          new MyButton(
                            text: 'Ruqia Shariah\nرقیہ شرعیہ',
                            functionn: () async {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      RuqiaViewer(
                                        name: 'Ruqaiya Sahirah',
                                        urll: 'assets/pdf/Ruqia.pdf',
                                      )));
                            },
                          ),
                          new MyButton(
                            text: 'Dua after Salah\nنماز کے بعد کے دعائیں',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      AfterNamazDuaien(
                                        dua: afterNamaz,
                                      )));
                            },
                          ),
                          new MyButton(
                            text:
                                'Duas before Sleeping and after waking up\nسونے سے پہلے اور جاگنے کے بعد دعائیں',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      SoneJagneOptions()));
                            },
                          ),
                          new MyButton(
                            text: 'Digital Library\nڈیجیٹل لا ئبریری',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      LibraryOptions()));
                            },
                          ),
                          new MyButton(
                            text: 'Subah Shaam Azkaar\nصبح شام اذکار',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      DuaOptions()));
                            },
                          ),
                          new MyButton(
                            text:
                                'How the Quran tells Muslims to behave\n قرآن میں مسلمانوں کے لئیے احکامات',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      Ahkamat(ahkamaat)));
                            },
                          ),
                          new MyButton(
                            text: 'Quranic Chapters \nقرآنی سورتیں',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      SurahOptions()));
                            },
                          ),
                          new MyButton(
                            text: 'Masnoon Duaien\n مسنون دعائیں',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      MasnoonDuaien(masnoonDuaien)));
                            },
                          ),
                          new MyButton(
                            text: 'Upcoming events\nآنے والی تقریبات',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      UpcomingEvents()));
                            },
                          ),
                          new MyButton(
                            text: 'Al-Fajr Duroos\nالفجر دروس',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      DuroosOptions()));
                            },
                          ),
                          new MyButton(
                            text: 'Posts of the week\nاس ہفتے کی پوسٹس',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) => POTD()));
                            },
                          ),
                          new MyButton(
                            text: 'Weekly Questions\nہفتہ وار سوالات',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      Questions()));
                            },
                          ),
                          new MyButton(
                            text:
                                '10 best times to make dua\nدعا کرنے کے لئے 10 بہترین اوقات',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) => Duas()));
                            },
                          ),
                          new MyButton(
                            text: 'Complaints or Advice\nشکایات یا مشورے',
                            functionn: () {
                              Navigator.of(context).push(CupertinoPageRoute(
                                  builder: (BuildContext context) =>
                                      Complaints()));
                            },
                          ),
                          new SizedBox(
                            width: size.width * 0.20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.1),
                    Footer(size: size),
                  ],
                ),
              ],
            ),
          ),
          (record.preferences.getString('home_dialogue_seen') == null)
              ? AlertDialog(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'This app is designed to help you in azkar, if you find any faults in the mobile application or have any suggestions feel free to directly contact us or write to us in complaints/advice section.',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                      ),
                      Text(
                        "Which country do you currently reside in? ",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w900,
                            fontSize: 17.0),
                      ),
                      Row(
                        children: [
                          RaisedButton(
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Text('Pakistan'),
                            onPressed: () {
                              record.preferences
                                  .setString('home_dialogue_seen', 'hello');
                              _regiter();
                              getMessage();
                              _firebaseMessaging.subscribeToTopic('Pakistan');
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                          ),
                          RaisedButton(
                            textColor: Colors.white,
                            child: Text('Saudi Arabia'),
                            color: AppColors.brown,
                            onPressed: () {
                              record.preferences
                                  .setString('home_dialogue_seen', 'hello');
                              _regiter();
                              getMessage();
                              _firebaseMessaging.subscribeToTopic('Saudia');
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  title: Text("Assalam u Alaikum"),
                  backgroundColor: Colors.white,
                )
              : Container(),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          "Brought to you by : ",
          style: new TextStyle(
              fontWeight: FontWeight.w600, fontSize: 25.0, color: Colors.black),
        ),
        Image(
          image: AssetImage("assets/logo.png"),
          height: size.height * 0.1,
          width: size.height * 0.1,
        )
      ],
    );
  }
}
