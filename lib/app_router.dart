import 'package:go_router/go_router.dart';

import 'screens/home_screen.dart';
import 'screens/list_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/form_screen.dart';
import 'screens/settings_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/list',
        builder: (context, state) => const ListScreen(),
      ),
      GoRoute(
        path: '/detail/:id',
        builder: (context, state) {
          // Utilisation de pathParameters au lieu de params (déprécié)
          final id = state.pathParameters['id']!;
          return DetailScreen(itemId: id);
        },
      ),
      GoRoute(
        path: '/form',
        builder: (context, state) => const FormScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
}