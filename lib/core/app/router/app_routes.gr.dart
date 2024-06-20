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
    EmailInputRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmailInputScreen(),
      );
    },
    EnterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EnterScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MarketplaceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MarketplaceDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MarketplaceDetailScreen(
          date: args.date,
          acceptOrderButton: args.acceptOrderButton,
          buyButton: args.buyButton,
          title: args.title,
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
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
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
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MarketplaceDetailScreen]
class MarketplaceDetailRoute extends PageRouteInfo<MarketplaceDetailRouteArgs> {
  MarketplaceDetailRoute({
    DateTime? date,
    required bool acceptOrderButton,
    required bool buyButton,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          MarketplaceDetailRoute.name,
          args: MarketplaceDetailRouteArgs(
            date: date,
            acceptOrderButton: acceptOrderButton,
            buyButton: buyButton,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'MarketplaceDetailRoute';

  static const PageInfo<MarketplaceDetailRouteArgs> page =
      PageInfo<MarketplaceDetailRouteArgs>(name);
}

class MarketplaceDetailRouteArgs {
  const MarketplaceDetailRouteArgs({
    this.date,
    required this.acceptOrderButton,
    required this.buyButton,
    required this.title,
  });

  final DateTime? date;

  final bool acceptOrderButton;

  final bool buyButton;

  final String title;

  @override
  String toString() {
    return 'MarketplaceDetailRouteArgs{date: $date, acceptOrderButton: $acceptOrderButton, buyButton: $buyButton, title: $title}';
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

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
