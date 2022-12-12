
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/home_page/home_page.dart';
import 'router_consts.dart';

class AppRouter {
  static const _root = '/';

  static Widget _homePageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const HomePage();

  final GoRouter _router = GoRouter(
    initialLocation: _root,
    routes: [
      GoRoute(
        path: _root,
        builder: _homePageRouteBuilder,
        name: RouterConsts.rootPageName,
      ),
    ],
  );

  GoRouter get router => _router;
}
