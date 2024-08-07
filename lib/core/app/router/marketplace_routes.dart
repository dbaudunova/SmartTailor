import 'package:auto_route/auto_route.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/router/routes_path_const.dart';

abstract class MarketPlaceRoutes {
  static final routes = AutoRoute(
    page: MarketplaceWrapperRoute.page,
    children: [
      AutoRoute(page: MarketplaceRoute.page, initial: true),
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
    ],
  );
}
