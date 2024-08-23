// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationService {
//   // Singleton pattern to ensure only one instance of NotificationService exists
//   static final NotificationService _instance = NotificationService._internal();
//   factory NotificationService() => _instance;

//   // Private constructor
//   NotificationService._internal();

//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> init() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('@mipmap/ic_launcher'); // Убедитесь, что у вас есть иконка в mipmap

//     final InitializationSettings initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid);

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       // onSelectNotification: onSelectNotification,
//     );
//   }

//   Future<void> showNotification(
//       int id, String? title, String? body, String? payload) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'your_channel_id', // Замените на ваш ID канала
//       'your_channel_name', // Замените на имя вашего канала
//       channelDescription: 'your_channel_description', // Замените на описание канала
//       importance: Importance.max,
//       priority: Priority.high,
//       playSound: true,
//       enableVibration: true,
//       icon: '@mipmap/ic_launcher', // Убедитесь, что у вас есть иконка в mipmap
//     );

//     const NotificationDetails platformChannelSpecifics =
//         NotificationDetails(android: androidPlatformChannelSpecifics);

//     await flutterLocalNotificationsPlugin.show(
//       id,
//       title,
//       body,
//       platformChannelSpecifics,
//       payload: payload,
//     );
//   }

//   Future<void> onSelectNotification(String? payload) async {
//     // Обработайте логику при нажатии на уведомление
//     if (payload != null) {
//       print('Notification payload: $payload');
//       // Вы можете перенаправить пользователя на нужный экран или выполнить другие действия
//     }
//   }
// }
