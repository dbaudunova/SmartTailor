import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/bottom_nav/bottom_nav_screen.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/pages/confirmation_screen.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/pages/email_input_screen.dart';
import 'package:neobis_smart_tailor/features/enter/enter_screen.dart';
import 'package:neobis_smart_tailor/features/home/presentation/pages/home_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screen/marketplace_detail_screen.dart';
import 'package:neobis_smart_tailor/features/my_purchases/presentation/pages/my_purchases_screen.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/order_place_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/organization_screen.dart';
import 'package:neobis_smart_tailor/features/personal_data/presentation/pages/personal_data_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/profile_screen.dart';
import 'package:neobis_smart_tailor/features/purchase_detail/presentation/pages/purchase_detail_screen.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/registration_screen.dart';
import 'package:neobis_smart_tailor/features/search/presentation/pages/search_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  // final AuthService authService;

  AppRouter(// this.authService
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registration',
          // initial: true,
        ),
        AutoRoute(
          page: EmailInputRoute.page,
          path: '/emailInput',
          // initial: true,
        ),
        AutoRoute(
          page: EnterRoute.page,
          path: '/enter',
          initial: true,
        ),
        AutoRoute(
          page: ConfirmationRoute.page,
          path: '/confirmation',
          // initial: true,
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
            AutoRoute(page: MarketplaceRoute.page),
            AutoRoute(page: OrderPlaceRoute.page),
            AutoRoute(page: OrganizationRoute.page),
            AutoRoute(page: ProfileRoute.page, maintainState: false),
          ],
        ),
        AutoRoute(
          page: MyPurchasesRoute.page,
          path: '/my_purchases',
        ),
        AutoRoute(
          page: PurchaseDetailRoute.page,
          path: '/purchase_detail',
        ),
        AutoRoute(
          page: PersonalDataRoute.page,
          path: '/personal_data',
        ),
        AutoRoute(
          page: MarketplaceDetailRoute.page,
          path: '/marketplace_detail',
          // initial: true,
        ),
      ];
}
