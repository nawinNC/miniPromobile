import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int _counter = 0;
  String? message;
  String channelId = "1000";
  String channelName = "FLUTTER_NOTIFICATION_CHANNEL";
  String channelDescription = "FLUTTER_NOTIFICATION_CHANNEL_DETAIL";

  initState() {
    message = "No message.";

    var initializationSettingsAndroid =
        const AndroidInitializationSettings('notiicon');

    var initializationSettingsIOS = DarwinInitializationSettings(
        onDidReceiveLocalNotification: (id, title, body, payload) async {
      print("onDidReceiveLocalNotification called.");
    });

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (payload) async {
      // when user tap on notification.
      print("onSelectNotification called.");
      setState(() {
        message = payload.payload;
      });
    });

    super.initState();
  }

  sendNotification() async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      '10000',
      'FLUTTER_NOTIFICATION_CHANNEL',
      channelDescription: 'FLUTTER_NOTIFICATION_CHANNEL_DETAIL',
      importance: Importance.max,
      priority: Priority.high,
    );

    var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();

    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(111, '💙สวัสดีค่ะ💜',
        'เที่ยวให้สนุกและเที่ยวอย่างปลอดภัยนะคะ ', platformChannelSpecifics,
        payload: 'I just haven\'t Met You Yet');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shadowColor: Colors.transparent,
        leading: const Icon(null),
        centerTitle: true,
        title: const Text(' ZONE ',
            style: TextStyle(
                fontSize: 26, fontFamily: 'Hey', color: Colors.black)),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/north.jpg'))),
                child: GestureDetector(
                  onTap: () {
                    sendNotification();
                    Navigator.pushNamed(context, '/north');
                  },
                )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/isaan.jpg'))),
                child: GestureDetector(
                  onTap: () {
                    sendNotification();
                    Navigator.pushNamed(context, '/isaan');
                  },
                )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/central.jpg'))),
                child: GestureDetector(
                  onTap: () {
                    sendNotification();
                    Navigator.pushNamed(context, '/central');
                  },
                )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/eastern.jpg'))),
                child: GestureDetector(
                  onTap: () {
                    sendNotification();
                    Navigator.pushNamed(context, '/eastern');
                  },
                )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/western.jpg'))),
                child: GestureDetector(
                  onTap: () {
                    sendNotification();
                    Navigator.pushNamed(context, '/western');
                  },
                )),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/southern.jpg'))),
                child: GestureDetector(
                  onTap: () {
                    sendNotification();
                    Navigator.pushNamed(context, '/south');
                  },
                )),
          ],
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
        ),
      )),
    );
  }
}
