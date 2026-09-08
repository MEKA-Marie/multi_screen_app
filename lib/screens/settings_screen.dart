import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SettingsScreen extends StatelessWidget {
	const SettingsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: const Text('Settings')),
			body: ValueListenableBuilder<ThemeMode>(
				valueListenable: AppTheme.mode,
				builder: (context, themeMode, child) {
					final isDark = themeMode == ThemeMode.dark;
					return SwitchListTile(
						title: const Text('Dark theme'),
						subtitle: const Text('Choose the appearance of the app'),
						value: isDark,
						onChanged: (value) {
							AppTheme.mode.value = value ? ThemeMode.dark : ThemeMode.light;
						},
					);
				},
			),
		);
	}
}
