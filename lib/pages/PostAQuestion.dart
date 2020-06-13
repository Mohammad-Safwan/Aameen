import 'dart:async';

import 'package:aameen/pages/HomePage.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostAQuestion extends StatefulWidget {
  @override
  _PostAQuestionState createState() => _PostAQuestionState();
}

class _PostAQuestionState extends State<PostAQuestion> {
  String content;
  final db = Firestore.instance;
  final GlobalKey<FormState> _questionKey = GlobalKey<FormState>();
  bool completed = false;
  bool uploaded = false;

  Future _updateData() async {
    DocumentReference ref = await db.collection('Questions').add({
      'Question': content,
      'Answer':'Yet to be answered'
    });
    setState(() {
      completed = true;
    });
  }

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Type your question here: ', filled: true, fillColor: Colors.white70),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter your question';
        }
      },
      onSaved: (String value) {
        content = value;
      },
      maxLines: 5,
    );
  }

  void _submitForm() {
    if (!_questionKey.currentState.validate()) {
      return;
    }
    _questionKey.currentState.save();
    _updateData();
    setState(() {
      uploaded = true;
    });
    //_repeatNotification();
    Timer(Duration(seconds: 3), (){ Navigator.of(context).pushReplacement(CupertinoPageRoute(
                                  builder: (BuildContext context) => HomePage()));});    
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Form(
                  key: _questionKey,
                  child: Column(
                    children: <Widget>[
                      Text("Post your question below, we will try to answer them as quickly as possible with the help of ulamas, The answers will be posted in Weekly Questions portion.", textAlign: TextAlign.center,),
                      Text("اپنے سوال کو ذیل میں پوسٹ کریں ، ہم کوشش کریں گے کہ جلد از جلد ان کا جواب علمائے کرام کی مدد سے دیں ، جوابات ہفتہ وار سوالات کے حصے میں پوسٹ کیے جائیں گے۔" ,textAlign: TextAlign.center,),
                      _buildNameTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.brown[300],
                        textColor: Colors.black,
                        child: Text('Submit'),
                        onPressed: _submitForm,
                      ),
                      (uploaded) ? 
                      AlertDialog(title: Text("Your question is being uploaded, be patient."),)
                      :
                      Container()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
