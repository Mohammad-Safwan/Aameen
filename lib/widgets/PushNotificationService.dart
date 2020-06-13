import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService{
  final FirebaseMessaging fcm =  new FirebaseMessaging();

  Future initialize () async{
    fcm.configure(
      onMessage: (Map <String,dynamic > message){
        print('on Message : $message');
      },
      onLaunch: (Map <String,dynamic > message){
        print('on Message : $message');
      },
      onResume: (Map <String,dynamic > message){
        print('on Message : $message');
      }
    );
  }
}