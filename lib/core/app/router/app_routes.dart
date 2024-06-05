import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/confirmation_screen.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/registration_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  // final AuthService authService;

  AppRouter(
      // this.authService
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registration',
          // initial: true,
        ),
        AutoRoute(
          page: ConfirmationRoute.page,
          path: '/confirmation',
          initial: true,
        ),
        // AutoRoute(
        //   path: '/',
        //   page: BottomMenuRoute.page,
        //   initial: true,
        //   guards: [
        //     AuthGuard(authService: authService),
        //   ],
        //   children: [
        //     AutoRoute(page: HomeRoute.page, maintainState: false),
        //     AutoRoute(page: SearchRoute.page),
        //     AutoRoute(page: ProfileRoute.page, maintainState: false),
        //   ],
        // ),
      ];
}
