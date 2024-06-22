import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OrderPlaceBloc(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background, // Установите нужный цвет фона
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: getIt<AppRouter>().config(),
      ),
    );
  }
}
