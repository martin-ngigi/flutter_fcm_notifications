import 'package:flutter/material.dart';
import 'package:flutter_fcm_notifications/constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late String fcm_token;
  TextEditingController _notificationEditor = TextEditingController();

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
     setFCM();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications Page",),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Fcm Token is: "),
          SizedBox(height: 20,),
          TextField(
            controller: _notificationEditor,
            maxLines: 5,
          )
        ],
      ),
    );
  }

  Future<void> setFCM() async{
    fcm_token = Constants.FCM_TOKEN!;
    setState(() {
      _notificationEditor.text = fcm_token;
    });
  }
}
