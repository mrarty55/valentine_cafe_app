import 'package:go_router/go_router.dart';

import '../screens/screens.dart';

const String homeRoute = '/';

const String coffeeRoute = '/coffee/:id';

/// Router configuration for this app
final routerConfig = GoRouter(
  initialLocation: homeRoute,
  routes: <GoRoute>[
    GoRoute(
      path: homeRoute,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: coffeeRoute,
      builder: (context, state) =>
          CoffeeScreen(idParam: state.params['id'] ?? ""),
    ),
  ],
  errorBuilder: (context, state) => const ErrorScreen(),
);
