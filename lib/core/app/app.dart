import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/bloc/notification_bloc.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AnnouncementBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<NotificationBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.background,
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: getIt<AppRouter>().config(),
        );
      }),
    );
  }
}
