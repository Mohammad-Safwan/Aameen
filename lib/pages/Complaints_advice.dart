import 'package:aameen/pages/HomePage.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Complaints extends StatefulWidget {
  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  String content;
  final db = Firestore.instance;
  final GlobalKey<FormState> _complainKey = GlobalKey<FormState>();
  String _currentItem;

  Future _updateData() async {
    DocumentReference ref = await db.collection('complains').add({
      'type': _currentItem,
      'content': content,
    });
    print(_currentItem);
    print(content);
  }

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Enter Complain/Advice: ', filled: true, fillColor: Colors.white70),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter valid complains/advices';
        }
      },
      onSaved: (String value) {
        content = value;
      },
      maxLines: 5,
    );
  }

  void _submitForm() {
    if (!_complainKey.currentState.validate()) {
      return;
    }
    _complainKey.currentState.save();
    _updateData();
    //_repeatNotification();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Future _uploadData() async {
    DocumentReference ref = await db.collection('Complain').add({
      'type': _currentItem,
      'content': content,
    });
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;

    List<String> _types = ['complain', 'advice'];

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackGroundImage(
            url: 'assets/best.png',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 10.0,),
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    width: targetWidth,
                    child: Form(
                      key: _complainKey,
                      child: Column(
                        children: <Widget>[
                          DropdownButton<String>(
                            hint: new Text("Choose message type"),
                            style: TextStyle(
                              color: new Color(0xff8a3751),
                              fontSize: 16.0,
                            ),
                            items: _types.map(
                              (String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Center(
                                    child: Text(
                                      dropDownStringItem,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._currentItem = newValueSelected;
                              });
                            },
                            value: _currentItem,
                          ),
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Footer(size: MediaQuery.of(context).size,)
            ],
          ),
        ],
      ),
    );
  }
}
