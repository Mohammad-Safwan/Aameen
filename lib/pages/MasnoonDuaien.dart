import 'package:aameen/data/appColors.dart';
import 'package:aameen/pages/Splash_Screen.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MasnoonDuaien extends StatefulWidget {
  final List<String> products;

  MasnoonDuaien(
    this.products,
  );

  @override
  _MasnoonDuaienState createState() => _MasnoonDuaienState();
}

class _MasnoonDuaienState extends State<MasnoonDuaien> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  bool showDialog = false;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);
    advancedPlayer.onSeekComplete.listen((event) {
      setState(() {
        alreadyplaying = false;
      });
    });
  }

  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: children
                .map(
                  (e) => Container(
                    child: e,
                    padding: EdgeInsets.all(10.0),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _btn(String text, VoidCallback onPress) {
    return ButtonTheme(
      minWidth: 48.0,
      child: Container(
        width: 150,
        height: 45,
        child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Text(text),
          onPressed: onPress,
        ),
      ),
    );
  }

  Widget localAudio(String text) {
    return _tab([
      _btn("play", () {
        if (!alreadyplaying) {
          audioCache.play(text);
          alreadyplaying = true;
        } else {
          setState(() {
            showDialog = true;
          });
        }
      }),
    ]);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.golden,
        title: Column(
          children: <Widget>[
            Text("Masnoon Duaien"),
            Text(
              "Make sure to click one dua at a time",
              style: TextStyle(fontSize: 13.0),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          BackGroundImage(url: 'assets/best.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.white70,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              widget.products[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 22.0),
                            ),
                            subtitle: localAudio(
                                'audio/' + widget.products[index] + '.ogg'),
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  },
                  itemCount: widget.products.length,
                ),
              ),
            ],
          ),
          (showDialog)
              ? AlertDialog(
                  title: Text("An audio is already playing."),
                  actions: [
                    RaisedButton(
                      child: Text("OK"),
                      onPressed: () {
                        setState(() {
                          showDialog = false;
                        });
                      },
                      color: AppColors.golden,
                    ),
                  ],
                )
              : Container()
        ],
      ),
      bottomSheet: Container(
        color: AppColors.golden,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.pause, color: Colors.white),
                onPressed: () {
                  if (alreadyplaying) {
                    advancedPlayer.pause();
                    alreadyplaying = false;
                  }
                }),
            IconButton(
                icon: Icon(Icons.stop, color: Colors.white),
                onPressed: () {
                  if (alreadyplaying) {
                    advancedPlayer.stop();
                    alreadyplaying = false;
                  }
                }),
          ],
        ),
      ),
    );
  }
}
