import 'package:go_router/go_router.dart';

import '../../components/components.dart';

// GoRouter configuration
final globalRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/intro',
      builder: (context, state) => const FormPage(),
    ),
  ],
);
