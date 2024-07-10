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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AnnouncementDetailScreen(),
      );
    },
    BottomNavRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavScreen(),
      );
    },
    ConfirmationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConfirmationScreen(),
      );
    },
    CreateOrganizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateOrganizationScreen(),
      );
    },
    CurrentOrderDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CurrentOrderDetailScreen(),
      );
    },
    EmailInputRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmailInputScreen(),
      );
    },
    EmployeeDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmployeeDetailScreen(),
      );
    },
    EmployeePositionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmployeePositionScreen(),
      );
    },
    EnterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EnterScreen(),
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
    MarketplaceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MarketplaceDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MarketplaceDetailScreen(
          acceptOrderButton: args.acceptOrderButton,
          buyButton: args.buyButton,
          title: args.title,
          key: args.key,
          date: args.date,
          sizeWidget: args.sizeWidget,
        ),
      );
    },
    MarketplaceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MarketplaceScreen(),
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
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderScreen(),
      );
    },
    OrganizationInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrganizationInfoScreen(),
      );
    },
    OrganizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrganizationScreen(),
      );
    },
    PersonalDataRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonalDataScreen(),
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PurchaseDetailScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
  };
}

/// generated route for
/// [AnnouncementDetailScreen]
class AnnouncementDetailRoute extends PageRouteInfo<void> {
  const AnnouncementDetailRoute({List<PageRouteInfo>? children})
      : super(
          AnnouncementDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class ConfirmationRoute extends PageRouteInfo<void> {
  const ConfirmationRoute({List<PageRouteInfo>? children})
      : super(
          ConfirmationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class CurrentOrderDetailRoute extends PageRouteInfo<void> {
  const CurrentOrderDetailRoute({List<PageRouteInfo>? children})
      : super(
          CurrentOrderDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'CurrentOrderDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class EmployeeDetailRoute extends PageRouteInfo<void> {
  const EmployeeDetailRoute({List<PageRouteInfo>? children})
      : super(
          EmployeeDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmployeePositionScreen]
class EmployeePositionRoute extends PageRouteInfo<void> {
  const EmployeePositionRoute({List<PageRouteInfo>? children})
      : super(
          EmployeePositionRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeePositionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [MarketplaceDetailScreen]
class MarketplaceDetailRoute extends PageRouteInfo<MarketplaceDetailRouteArgs> {
  MarketplaceDetailRoute({
    required bool acceptOrderButton,
    required bool buyButton,
    required String title,
    Key? key,
    DateTime? date,
    CustomDropdown? sizeWidget,
    List<PageRouteInfo>? children,
  }) : super(
          MarketplaceDetailRoute.name,
          args: MarketplaceDetailRouteArgs(
            acceptOrderButton: acceptOrderButton,
            buyButton: buyButton,
            title: title,
            key: key,
            date: date,
            sizeWidget: sizeWidget,
          ),
          initialChildren: children,
        );

  static const String name = 'MarketplaceDetailRoute';

  static const PageInfo<MarketplaceDetailRouteArgs> page = PageInfo<MarketplaceDetailRouteArgs>(name);
}

class MarketplaceDetailRouteArgs {
  const MarketplaceDetailRouteArgs({
    required this.acceptOrderButton,
    required this.buyButton,
    required this.title,
    this.key,
    this.date,
    this.sizeWidget,
  });

  final bool acceptOrderButton;

  final bool buyButton;

  final String title;

  // final Key? key;

  final DateTime? date;

  final CustomDropdown? sizeWidget;

  @override
  String toString() {
    return 'MarketplaceDetailRouteArgs{acceptOrderButton: $acceptOrderButton, buyButton: $buyButton, title: $title, key: $key, date: $date, sizeWidget: $sizeWidget}';
  }
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
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrganizationInfoScreen]
class OrganizationInfoRoute extends PageRouteInfo<void> {
  const OrganizationInfoRoute({List<PageRouteInfo>? children})
      : super(
          OrganizationInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrganizationInfoRoute';

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
class PurchaseDetailRoute extends PageRouteInfo<void> {
  const PurchaseDetailRoute({List<PageRouteInfo>? children})
      : super(
          PurchaseDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'PurchaseDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
