import 'package:flutter/material.dart';

class AppTheme {
  static final ValueNotifier<ThemeMode> mode = ValueNotifier(ThemeMode.system);

  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.deepPurple,
    appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
  );
}
