import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/app/router/auth_route_guard.dart';
import 'package:neobis_smart_tailor/core/app/router/routes_path_const.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';
import 'package:neobis_smart_tailor/features/bottom_nav/bottom_nav_screen.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/pages/confirmation_screen.dart';
import 'package:neobis_smart_tailor/features/confirmation/presentation/pages/enter_screen.dart';
import 'package:neobis_smart_tailor/features/login/presentation/email_input_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/equipment_detail_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/order_detail_screen.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/service_detail_screen.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/order_place_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/create_organization/create_organization_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/current_order_detail/current_order_detail_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/employee_detail/employee_detail_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/employee_position/employee_position_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/history_detail/history_detail_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/invite_employee/invite_employee_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/organization_info/organization_info_screen.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/pages/organization_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/announcements/announcement_detail_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/announcements/my_announcements_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/notification_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/order_history/order_history_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/organization/profile_organization_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/personal_data/personal_data_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/profile_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/my_purchases_screen.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/purchases/purchase_detail_screen.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/registration_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final AuthService authService;

  AppRouter(this.authService);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: EmailInputRoute.page,
          path: RoutesPaths.emailInput,
          // initial: true,
        ),
        AutoRoute(
          page: EnterRoute.page,
          path: RoutesPaths.enter,
          // initial: true,
        ),
        // AutoRoute(
        //   page: ConfirmationRoute.page,
        //   path: '/confirmation',
        //   // initial: true,
        // ),
        AutoRoute(
          page: RegistrationRoute.page,
          path: RoutesPaths.registration,
          // initial: true,
        ),
        AutoRoute(
          page: ConfirmationRoute.page,
          path: RoutesPaths.confirmation,
          // initial: true,
        ),
        AutoRoute(
          initial: true,
          path: RoutesPaths.main,
          page: BottomNavRoute.page,
          guards: [
            AuthGuard(authService: authService),
          ],
          children: [
            AutoRoute(page: MarketplaceRoute.page),
            AutoRoute(page: OrderPlaceRoute.page, maintainState: false),
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
          page: OrderHistoryRoute.page,
          path: '/order_history',
        ),
        AutoRoute(
          page: MyAnnouncementsRoute.page,
          path: '/my_announcements',
        ),
        AutoRoute(
          page: OrderDetailRoute.page,
          path: RoutesPaths.orderDetail,
        ),
        AutoRoute(
          page: ServiceDetailRoute.page,
          path: RoutesPaths.serviceDetail,
        ),
        AutoRoute(
          page: EquipmentDetailRoute.page,
          path: RoutesPaths.equipmentDetail,
        ),

        AutoRoute(
          page: AnnouncementDetailRoute.page,
          path: '/announcement_detail',
        ),
        AutoRoute(
          page: CreateOrganizationRoute.page,
          path: '/create_organization',
        ),
        AutoRoute(
          page: OrganizationInfoRoute.page,
          path: '/organization_info',
        ),
        AutoRoute(
          page: InviteEmployeeRoute.page,
          path: '/invite_employee',
        ),
        AutoRoute(
          page: EmployeePositionRoute.page,
          path: '/employee_position',
        ),
        AutoRoute(
          page: EmployeeDetailRoute.page,
          path: '/employee_detail',
        ),
        AutoRoute(
          page: HistoryDetailRoute.page,
          path: '/history_detail',
        ),
        AutoRoute(
          page: CurrentOrderDetailRoute.page,
          path: '/current_order_detail',
        ),
        AutoRoute(
          page: NotificationRoute.page,
          path: '/notification',
        ),
        AutoRoute(
          page: ProfileOrganizationRoute.page,
          path: '/profile_organization',
        ),
      ];
}
