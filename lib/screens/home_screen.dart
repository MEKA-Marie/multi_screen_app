import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Explorer')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.restaurant_menu, size: 64, color: theme.colorScheme.primary),
                const SizedBox(height: 16),
                Text(
                  'Discover your next recipe',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  'Browse simple recipes, search by name, and save inspiration for later.',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 28),
                CustomButton(
                  onPressed: () => context.goNamed('recipes'),
                  text: 'Browse recipes',
                ),
                TextButton(
                  onPressed: () => context.goNamed('recipe-form'),
                  child: const Text('Share a recipe'),
                ),
                TextButton.icon(
                  onPressed: () => context.goNamed('settings'),
                  icon: const Icon(Icons.settings_outlined),
                  label: const Text('Settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
