import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../../components/components.dart';


@MaterialAutoRouter(
  preferRelativeImports: false,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: FormPage,
      path: '/intro',
    ),
  ],
)
class $RootRouter {}
