import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fcm_notifications/notifications_page.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'constants.dart';
import 'firebase_options.dart';
import 'notification_helper.dart';


Future<dynamic> myBackgroundMessageHandler(RemoteMessage message) async{
  print("--------->[main] onBackground: ${message.notification?.title}/${message.notification?.body}"
      "/${message.notification?.titleLocKey}");
}
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async{

  // bind app with framework
  WidgetsFlutterBinding.ensureInitialized();

  // initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final fcmToken = await FirebaseMessaging.instance.getToken();
  print("-----[Main] FCM Token : ${fcmToken}");
  Constants.FCM_TOKEN = fcmToken;
  ///sample fcm toke


  try{
    // if(GetPlatform.isMobile){
      final RemoteMessage? remoteMessage =  await FirebaseMessaging.instance.getInitialMessage();
      await NotificationHelper.initialize(flutterLocalNotificationsPlugin);
      FirebaseMessaging.onBackgroundMessage(myBackgroundMessageHandler);
    // }
  }
  catch(e){
    if(kDebugMode){
      print("--------->[main] onBackground: ${e.toString()}");
    }
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FCM Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationPage(),
    );
  }
}
