import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/app.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}
