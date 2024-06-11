import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/bottom_nav/bottom_nav_screen.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/confirmation_screen.dart';
import 'package:neobis_smart_tailor/features/enter/enter_screen.dart';
import 'package:neobis_smart_tailor/features/home/presentation/pages/home_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/profile_screen.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/registration_screen.dart';
import 'package:neobis_smart_tailor/features/search/presentation/pages/search_screen.dart';

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
          page: EnterRoute.page,
          path: '/enter',
          initial: true,
        ),
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registration',
          // initial: true,
        ),
        AutoRoute(
          page: ConfirmationRoute.page,
          path: '/confirmation',
          // initial: true,
        ),
        AutoRoute(
          // initial: true,
          // path: '/',
          page: BottomNavRoute.page,
          guards: [
            //AuthGuard(authService: authService),
          ],
          children: [
            AutoRoute(page: HomeRoute.page, maintainState: false),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: MarketplaceRoute.page),
            AutoRoute(page: ProfileRoute.page, maintainState: false),
          ],
        ),
      ];
}
