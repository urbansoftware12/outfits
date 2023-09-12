import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:outfits/infrastructure/services/navigation_service.dart';
import 'package:outfits/presentation/home/home_page.dart';
import 'package:outfits/presentation/login/login_page.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellHomeNavigatorKey = GlobalKey<NavigatorState>();

class UserAppRoutes {
  factory UserAppRoutes() => instance;

  UserAppRoutes._constructor() : goRouter = routerConfig;
  final GoRouter goRouter;
  static final UserAppRoutes instance = UserAppRoutes._constructor();

  static final GoRouter routerConfig = GoRouter(
    // initialLocation: NavigationService.splashRouteUri,
    initialLocation: '/${NavigationService.homeRouteUri}',
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: NavigationService.loginRouteUri,
        path: '/${NavigationService.loginRouteUri}',
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, routerState) => const LoginPage(),
      ),
      GoRoute(
        name: NavigationService.homeRouteUri,
        path: '/${NavigationService.homeRouteUri}',
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, routerState) => const HomePage(),
      ),
    ],
  );
}
