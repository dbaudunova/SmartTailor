import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:neobis_smart_tailor/core/app/app.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/router/routes_path_const.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_client.dart';
import 'package:neobis_smart_tailor/core/network/http_overrides.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

FutureOr<void> main() async {
  runZonedGuarded(() async {
    var widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(

        // options: const FirebaseOptions(
        //   apiKey: 'AIzaSyBWk72xaPXAiW2z83rJYyRWsRH7QwioVgQ',
        //   appId: '1:464608460613:android:88bff1b6cd7f9c1928c82c',
        //   messagingSenderId: '464608460613',
        //   projectId: 'smarttailorapp-612ac',
        //   storageBucket: 'smarttailorapp-612ac.appspot.com',
        //   authDomain: '', // если у вас нет authDomain, оставьте пустым
        //   databaseURL: '', // если не используется Realtime Database, оставьте пустым
        // ),
        );
    await FirebaseMessaging.instance.setAutoInitEnabled(true);
    // await FirebaseMessaging.onMessageOpenedApp.

    final fcmToken = await FirebaseMessaging.instance.getToken();
    print("FCMToken $fcmToken");

    // final client = HttpClient(Dio());
    // await client.sendFcmToken(fcmToken!); // Sending the token to the server
    // await getIt<HttpClient>().sendFcmToken(fcmToken!);
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await configureDependencies();
    await getIt<AuthService>().recoverUser();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    HttpOverrides.global = MyHttpOverrides();
    runApp(const MyApp());
    FlutterNativeSplash.remove();
  }, (error, stackTrace) {
    if (error is Authorization) {
      if (getIt<AppRouter>().current.name != RoutesPaths.enter) {
        getIt<AppRouter>().push(
          const EnterRoute(),
        );
      }
    }
  });

  // const AndroidNotificationChannel channel = AndroidNotificationChannel(
  //   'high_importance_channel', // id
  //   'High Importance Notifications', // title
  //   description: 'This channel is used for important notifications.', // description
  //   importance: Importance.max,
  // );

  // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);

  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   RemoteNotification notification = message.notification!;
  //   AndroidNotification android = message.notification!.android!;

  //   // If `onMessage` is triggered with a notification, construct our own
  //   // local notification to show to users using the created channel.
  //   if (notification != null && android != null) {
  //     flutterLocalNotificationsPlugin.show(
  //         notification.hashCode,
  //         notification.title,
  //         notification.body,
  //         NotificationDetails(
  //           android: AndroidNotificationDetails(
  //             channel.id,
  //             channel.name,
  //             channelDescription: channel.description,
  //             icon: 'ic_notification',
  //             // other properties...
  //           ),
  //         ));
  //   }
  // });
}
