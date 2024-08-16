// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AnnouncementDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AnnouncementDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AnnouncementDetailScreen(
          id: args.id,
          type: args.type,
          key: args.key,
        ),
      );
    },
    BottomNavRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavScreen(),
      );
    },
    ConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfirmationScreen(
          email: args.email,
          key: args.key,
        ),
      );
    },
    CreateOrganizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateOrganizationScreen(),
      );
    },
    CurrentOrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CurrentOrderDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CurrentOrderDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
    EmailInputRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmailInputScreen(),
      );
    },
    EmployeeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<EmployeeDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EmployeeDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
    EnterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EnterScreen(),
      );
    },
    EquipmentDetailRoute.name: (routeData) {
      final args = routeData.argsAs<EquipmentDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EquipmentDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
    HistoryDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryDetailScreen(),
      );
    },
    InviteEmployeeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InviteEmployeeScreen(),
      );
    },
    MarketplaceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MarketplaceScreen()),
      );
    },
    MarketplaceWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MarketplaceWrapperScreen()),
      );
    },
    MyAnnouncementsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyAnnouncementsScreen(),
      );
    },
    MyPurchasesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyPurchasesScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationScreen(),
      );
    },
    OrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
    OrderHistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderHistoryScreen(),
      );
    },
    OrderPlaceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderPlaceScreen(),
      );
    },
    OrganizationEmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrganizationEmptyScreen(),
      );
    },
    OrganizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrganizationScreen(),
      );
    },
    OrganizationWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const OrganizationWrapperScreen()),
      );
    },
    PersonalDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalDataScreen(),
      );
    },
    PositionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PositionsScreen(),
      );
    },
    ProfileOrganizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileOrganizationScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    PurchaseDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PurchaseDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PurchaseDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    ServiceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ServiceDetailScreen(
          id: args.id,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AnnouncementDetailScreen]
class AnnouncementDetailRoute
    extends PageRouteInfo<AnnouncementDetailRouteArgs> {
  AnnouncementDetailRoute({
    required int id,
    required AnnouncementType type,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AnnouncementDetailRoute.name,
          args: AnnouncementDetailRouteArgs(
            id: id,
            type: type,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AnnouncementDetailRoute';

  static const PageInfo<AnnouncementDetailRouteArgs> page =
      PageInfo<AnnouncementDetailRouteArgs>(name);
}

class AnnouncementDetailRouteArgs {
  const AnnouncementDetailRouteArgs({
    required this.id,
    required this.type,
    this.key,
  });

  final int id;

  final AnnouncementType type;

  final Key? key;

  @override
  String toString() {
    return 'AnnouncementDetailRouteArgs{id: $id, type: $type, key: $key}';
  }
}

/// generated route for
/// [BottomNavScreen]
class BottomNavRoute extends PageRouteInfo<void> {
  const BottomNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConfirmationScreen]
class ConfirmationRoute extends PageRouteInfo<ConfirmationRouteArgs> {
  ConfirmationRoute({
    required String? email,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmationRoute.name,
          args: ConfirmationRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmationRoute';

  static const PageInfo<ConfirmationRouteArgs> page =
      PageInfo<ConfirmationRouteArgs>(name);
}

class ConfirmationRouteArgs {
  const ConfirmationRouteArgs({
    required this.email,
    this.key,
  });

  final String? email;

  final Key? key;

  @override
  String toString() {
    return 'ConfirmationRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [CreateOrganizationScreen]
class CreateOrganizationRoute extends PageRouteInfo<void> {
  const CreateOrganizationRoute({List<PageRouteInfo>? children})
      : super(
          CreateOrganizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateOrganizationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CurrentOrderDetailScreen]
class CurrentOrderDetailRoute
    extends PageRouteInfo<CurrentOrderDetailRouteArgs> {
  CurrentOrderDetailRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CurrentOrderDetailRoute.name,
          args: CurrentOrderDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CurrentOrderDetailRoute';

  static const PageInfo<CurrentOrderDetailRouteArgs> page =
      PageInfo<CurrentOrderDetailRouteArgs>(name);
}

class CurrentOrderDetailRouteArgs {
  const CurrentOrderDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'CurrentOrderDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [EmailInputScreen]
class EmailInputRoute extends PageRouteInfo<void> {
  const EmailInputRoute({List<PageRouteInfo>? children})
      : super(
          EmailInputRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailInputRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmployeeDetailScreen]
class EmployeeDetailRoute extends PageRouteInfo<EmployeeDetailRouteArgs> {
  EmployeeDetailRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EmployeeDetailRoute.name,
          args: EmployeeDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EmployeeDetailRoute';

  static const PageInfo<EmployeeDetailRouteArgs> page =
      PageInfo<EmployeeDetailRouteArgs>(name);
}

class EmployeeDetailRouteArgs {
  const EmployeeDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'EmployeeDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [EnterScreen]
class EnterRoute extends PageRouteInfo<void> {
  const EnterRoute({List<PageRouteInfo>? children})
      : super(
          EnterRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EquipmentDetailScreen]
class EquipmentDetailRoute extends PageRouteInfo<EquipmentDetailRouteArgs> {
  EquipmentDetailRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EquipmentDetailRoute.name,
          args: EquipmentDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EquipmentDetailRoute';

  static const PageInfo<EquipmentDetailRouteArgs> page =
      PageInfo<EquipmentDetailRouteArgs>(name);
}

class EquipmentDetailRouteArgs {
  const EquipmentDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'EquipmentDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [HistoryDetailScreen]
class HistoryDetailRoute extends PageRouteInfo<void> {
  const HistoryDetailRoute({List<PageRouteInfo>? children})
      : super(
          HistoryDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InviteEmployeeScreen]
class InviteEmployeeRoute extends PageRouteInfo<void> {
  const InviteEmployeeRoute({List<PageRouteInfo>? children})
      : super(
          InviteEmployeeRoute.name,
          initialChildren: children,
        );

  static const String name = 'InviteEmployeeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MarketplaceScreen]
class MarketplaceRoute extends PageRouteInfo<void> {
  const MarketplaceRoute({List<PageRouteInfo>? children})
      : super(
          MarketplaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarketplaceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MarketplaceWrapperScreen]
class MarketplaceWrapperRoute extends PageRouteInfo<void> {
  const MarketplaceWrapperRoute({List<PageRouteInfo>? children})
      : super(
          MarketplaceWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarketplaceWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyAnnouncementsScreen]
class MyAnnouncementsRoute extends PageRouteInfo<void> {
  const MyAnnouncementsRoute({List<PageRouteInfo>? children})
      : super(
          MyAnnouncementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyAnnouncementsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyPurchasesScreen]
class MyPurchasesRoute extends PageRouteInfo<void> {
  const MyPurchasesRoute({List<PageRouteInfo>? children})
      : super(
          MyPurchasesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPurchasesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderDetailScreen]
class OrderDetailRoute extends PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailRoute.name,
          args: OrderDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailRoute';

  static const PageInfo<OrderDetailRouteArgs> page =
      PageInfo<OrderDetailRouteArgs>(name);
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [OrderHistoryScreen]
class OrderHistoryRoute extends PageRouteInfo<void> {
  const OrderHistoryRoute({List<PageRouteInfo>? children})
      : super(
          OrderHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderHistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderPlaceScreen]
class OrderPlaceRoute extends PageRouteInfo<void> {
  const OrderPlaceRoute({List<PageRouteInfo>? children})
      : super(
          OrderPlaceRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderPlaceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrganizationEmptyScreen]
class OrganizationEmptyRoute extends PageRouteInfo<void> {
  const OrganizationEmptyRoute({List<PageRouteInfo>? children})
      : super(
          OrganizationEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrganizationEmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrganizationScreen]
class OrganizationRoute extends PageRouteInfo<void> {
  const OrganizationRoute({List<PageRouteInfo>? children})
      : super(
          OrganizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrganizationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrganizationWrapperScreen]
class OrganizationWrapperRoute extends PageRouteInfo<void> {
  const OrganizationWrapperRoute({List<PageRouteInfo>? children})
      : super(
          OrganizationWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrganizationWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonalDataScreen]
class PersonalDataRoute extends PageRouteInfo<void> {
  const PersonalDataRoute({List<PageRouteInfo>? children})
      : super(
          PersonalDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalDataRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PositionsScreen]
class PositionsRoute extends PageRouteInfo<void> {
  const PositionsRoute({List<PageRouteInfo>? children})
      : super(
          PositionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PositionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileOrganizationScreen]
class ProfileOrganizationRoute extends PageRouteInfo<void> {
  const ProfileOrganizationRoute({List<PageRouteInfo>? children})
      : super(
          ProfileOrganizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileOrganizationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PurchaseDetailScreen]
class PurchaseDetailRoute extends PageRouteInfo<PurchaseDetailRouteArgs> {
  PurchaseDetailRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PurchaseDetailRoute.name,
          args: PurchaseDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PurchaseDetailRoute';

  static const PageInfo<PurchaseDetailRouteArgs> page =
      PageInfo<PurchaseDetailRouteArgs>(name);
}

class PurchaseDetailRouteArgs {
  const PurchaseDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'PurchaseDetailRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ServiceDetailScreen]
class ServiceDetailRoute extends PageRouteInfo<ServiceDetailRouteArgs> {
  ServiceDetailRoute({
    required int id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ServiceDetailRoute.name,
          args: ServiceDetailRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceDetailRoute';

  static const PageInfo<ServiceDetailRouteArgs> page =
      PageInfo<ServiceDetailRouteArgs>(name);
}

class ServiceDetailRouteArgs {
  const ServiceDetailRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'ServiceDetailRouteArgs{id: $id, key: $key}';
  }
}
