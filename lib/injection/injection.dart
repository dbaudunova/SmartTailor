import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();

void setup() {
  getIt
    ..registerSingleton<AuthService>(AuthService())
    ..registerLazySingleton<HttpClient>(() => HttpClient());
}
