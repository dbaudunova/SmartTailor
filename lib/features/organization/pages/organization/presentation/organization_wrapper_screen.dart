import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';

@RoutePage()
class OrganizationWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const OrganizationWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyRouterPage();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
