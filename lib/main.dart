import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fcm_notifications/notifications_page.dart';
import 'constants.dart';
import 'firebase_options.dart';

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
  /**
      1. emulator
      e6jq98nSQsq47d-YntB6Mq:APA91bEQ__8tk817Xi8xKBVgCuIkXOZ8xh6Cqsn3BT7xiD20i5OEk4717Vt9YquK-kOvqj4ArowyzL7WCnWFIXBKGsBbL8Lr78npHURiyPr3UU7nVWfwCWgh4eJZCGQ5S9G_p8Chh5nV

      2. nokia c2
      eYLvDEurQ2So5zenFinIB_:APA91bGPSs_IyzO9IatM3bzlcbWWHBZ4jbDf0J-IYDBRlDw4_3yOU3QetHKCciCpgifF-z0ct58irc03bSY7a2dgph4KlXMk-nxnA9afyQ-Afl0e7LtZZxE7JTC17yR974rxDofOhxuM
   */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationPage(),
    );
  }
}
