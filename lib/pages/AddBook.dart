import 'package:aameen/data/appColors.dart';
import 'package:aameen/data/user_preference.dart';
import 'package:aameen/pages/HomePage.dart';
import 'package:aameen/pages/PDF.dart';
import 'package:aameen/widgets/BackgroundImage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class AddBook extends StatefulWidget {
  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  bool bookUploading = false;
  String author, name, url;
  final db = Firestore.instance;
  final GlobalKey<FormState> _bookKey = GlobalKey<FormState>();
  bool visible = false;

  Future _updateData() async {
    DocumentReference ref = await db
        .collection('PDFCollection')
        .add({'author': author, 'name': name, 'url': url});
  }

  Widget _buildNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Enter Books's name: ",
          filled: true,
          fillColor: Colors.white70),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return "Please enter book's name";
        }
      },
      onSaved: (String value) {
        name = value;
      },
      maxLines: 2,
    );
  }

  Widget _buildNameTextField2() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Enter Author's name: ",
          filled: true,
          fillColor: Colors.white70),
      keyboardType: TextInputType.text,
      onSaved: (String value) {
        author = value;
      },
      maxLines: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    void _submitForm() {
      if (!_bookKey.currentState.validate()) {
        return;
      }
      _bookKey.currentState.save();
      _updateData();
      //_repeatNotification();
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (context) => PDF()));
    }

    Future getPdfAndUpload() async {
      var file = await FilePicker.getFile(
          type: FileType.custom, allowedExtensions: ['pdf']);
      String fileName = basename(file.path);
      StorageReference _firebaseStorageRef =
          FirebaseStorage.instance.ref().child(fileName);
      StorageUploadTask uploadTask = _firebaseStorageRef.putFile(file);
      setState(() {
        bookUploading = true;
      });
      url = await (await uploadTask.onComplete).ref.getDownloadURL();
      setState(() {
        visible = true;
        bookUploading = false;
      });
    }

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
                width: MediaQuery.of(context).size.width * 0.9,
                child: Form(
                  key: _bookKey,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                            "You can upload an Islamic book for everyone to read, wait for submit button to appear after you upload the book"),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Center(
                        child: Text(
                            "آپ دوسروں کے مستفید ہونے کے لیئے کتاب اپ لوڈ کر سکتے ہیں، کتاب اپ لوڈ کرنے کے بعد submit بٹن کا انتظار کریں۔"),
                      ),
                      _buildNameTextField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _buildNameTextField2(),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        child: Text("Upload Book"),
                        onPressed: getPdfAndUpload,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      (visible)
                          ? RaisedButton(
                              color: Colors.brown[300],
                              textColor: Colors.black,
                              child: Text('Submit'),
                              onPressed: _submitForm,
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          (record.preferences.getString('book_inner') == null)
              ? AlertDialog(
                  title: Column(
                    children: <Widget>[
                      Center(
                          child: Image.asset(
                        'assets/upload_book.png',
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height / 2,
                      )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                  actions: <Widget>[
                    RaisedButton(
                      color: AppColors.golden,
                      textColor: Colors.white,
                      child: Text('Close'),
                      onPressed: () {
                        record.preferences.setString('book_inner', 'hello');
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => PDF()));
                      },
                    )
                  ],
                )
              : Container(),
          (bookUploading) ? AlertDialog(
            title: Text("Your book is uploading, please be patient."),
          ) : Container()
        ],
      ),
    );
  }
}
