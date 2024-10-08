import 'package:auto_route/auto_route.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';

abstract class OrganizationRoutes {
  static final routes = AutoRoute(
    page: OrganizationWrapperRoute.page,
    children: [
      AutoRoute(
        page: OrganizationRoute.page,
        path: 'organization_info',
        initial: true,
      ),
      AutoRoute(
        page: InviteEmployeeRoute.page,
        path: 'invite_employee',
      ),
      AutoRoute(
        page: PositionsRoute.page,
        path: 'positions',
      ),
      AutoRoute(
        page: EmployeeDetailRoute.page,
        path: 'employee_detail',
      ),
      AutoRoute(
        page: OrganizationEmptyRoute.page,
        path: 'organization_empty',
      ),
    ],
  );
}
