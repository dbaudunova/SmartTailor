import 'package:auto_route/auto_route.dart';
import 'package:neobis_smart_tailor/core/app/router/routes_path_const.dart';
import 'package:neobis_smart_tailor/core/services/auth_service.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthService authService;

  AuthGuard({required this.authService});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.cachedUser?.accessToken != null) {
      resolver.next(true);
    } else {
      router.pushNamed(RoutesPaths.enter);
    }
  }
}
