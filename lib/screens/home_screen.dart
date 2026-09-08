import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () => context.go('/list'),
              text: 'Go to List',
            ),
            CustomButton(
              onPressed: () => context.go('/form'),
              text: 'Go to Form',
            ),
            CustomButton(
              onPressed: () => context.go('/settings'),
              text: 'Go to Settings',
            ),
          ],
        ),
      ),
    );
  }
}
