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
        name: 'home',
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: 'recipes',
        path: '/list',
        builder: (context, state) => const ListScreen(),
      ),
      GoRoute(
        name: 'recipe-detail',
        path: '/detail/:id',
        builder: (context, state) {
          // Utilisation de pathParameters au lieu de params (déprécié)
          final id = state.pathParameters['id']!;
          return DetailScreen(itemId: id);
        },
      ),
      GoRoute(
        name: 'recipe-form',
        path: '/form',
        builder: (context, state) => const FormScreen(),
      ),
      GoRoute(
        name: 'settings',
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
}