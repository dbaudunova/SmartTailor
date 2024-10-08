import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:neobis_smart_tailor/core/app/app.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/router/routes_path_const.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/http_overrides.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/core/services/notification_service.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

FutureOr<void> main() async {
  runZonedGuarded(() async {
    var widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await FirebaseMessaging.instance.setAutoInitEnabled(true);
    await configureDependencies();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await getIt<AuthService>().recoverUser();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    HttpOverrides.global = MyHttpOverrides();
    await getIt<NotificationService>().init();
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
}
