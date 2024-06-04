import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
