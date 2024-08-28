import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/services/notification_service.dart';
import 'package:neobis_smart_tailor/injection/injection.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureDependencies() async {
  getIt
    // getIt.registerSingleton<AuthService>(AuthService());
    ..registerLazySingleton<HttpClient>(() => HttpClient())
    ..registerSingleton<NotificationService>(NotificationService())
    ..init();
}
