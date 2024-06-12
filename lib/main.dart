import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neobis_smart_tailor/core/app/app.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  // WidgetsFlutterBinding.ensureInitialized();
  // await configureDependencies();
  runApp(const MyApp());
}
