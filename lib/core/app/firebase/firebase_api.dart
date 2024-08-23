// import 'dart:developer'; //здесь для получения токена

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:grock/grock.dart';

// class FireBaseApi {
//   late final FirebaseMessaging msg;
//   void SettingNotrification() async {
//     await msg.requestPermission(
//       alert: true,
//       sound: true,
//       badge: true,
//     );
//   }

//   void ConnectNotrifc() async {
//     await Firebase.initializeApp();
//     await FirebaseMessaging.instance.getInitialMessage();
//     await FirebaseMessaging.instance.requestPermission();
//     msg = FirebaseMessaging.instance; // инициализация
//     msg.setForegroundNotificationPresentationOptions(
//       alert: true,
//       sound: true,
//       badge: true,
//     );
//     SettingNotrification();

//     FirebaseMessaging.onMessage.listen((RemoteMessage event) {
//       print("это сообщение уведомления: ${event.notification?.title} ");
//       // здесь находится элемент управления для уведомления от firebasewebsite с токеном
//       Grock.snackBar(
//           title: " ${event.notification?.title} ",
//           description: " ${event.notification?.body} ",
//           opacity: 0.5,
//           position: SnackbarPosition.top);
//     });

//     msg.getToken().then((value) => print("token : $value "));
//   }
// }

// class NotificationService {
//   static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   // инициализируем плагин. app_icon необходимо добавить в качестве отрисовываемого ресурса в головной проект Android
//   static AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

//   static initNotification() async {
//     final InitializationSettings initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//     );

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//     );
//   }

//   static showLocalNotification(String title, String body, String payload) {
//     const androidNotificationDetail = AndroidNotificationDetails(
//       '0',
//       'general',
//       priority: Priority.high,
//       autoCancel: false,
//       fullScreenIntent: true,
//       enableVibration: true,
//       // important: Importance.high,
//       playSound: true,
//     );
//     const iosNotificatonDetail = DarwinNotificationDetails();
//     const notificationDetails = NotificationDetails(
//       iOS: iosNotificatonDetail,
//       android: androidNotificationDetail,
//     );
//     flutterLocalNotificationsPlugin.show(0, title, body, notificationDetails, payload: payload);
//   }
// }
