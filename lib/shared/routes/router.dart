import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';
import 'home_router.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class RootRouter extends _$RootRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    CustomRoute(
        path: '/',
        page: IntroRoute.page,
        transitionsBuilder: TransitionsBuilders.noTransition,
        durationInMilliseconds: 0),
    CustomRoute(
        page: FormRoute.page,
        path: '/form',
        transitionsBuilder: TransitionsBuilders.noTransition,
        durationInMilliseconds: 0),
    AutoRoute(path: '/home', page: AuthorizedRouter.page, children: [
      AutoRoute(page: HomeRoute.page, path: ''),
    ])
  ];
}
