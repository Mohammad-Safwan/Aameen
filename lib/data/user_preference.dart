import 'package:shared_preferences/shared_preferences.dart';

class Record{
  SharedPreferences preferences;
  Record() {
    checker();
  }


  Future checker() async {
    preferences = await SharedPreferences.getInstance();
    var c = 2 * 2 * 2 * 2 * 2 * 2;
    for (var i = 0; i < 10; i++) {
      print(c);
    } 
  }
}


Record record = new Record();
Future<SharedPreferences> preferences = SharedPreferences.getInstance();
