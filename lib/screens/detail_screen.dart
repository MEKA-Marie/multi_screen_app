import 'package:flutter/material.dart';
import '../data/items.dart';

class DetailScreen extends StatelessWidget {
  final String itemId;
  const DetailScreen({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    final item = findItemById(itemId);

    if (item == null) {
      return const Scaffold(
        body: Center(child: Text('Recipe not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Stack(
        children: [
          Center(child: Text(item.title, style: TextStyle(fontSize: 24))),
          Positioned(bottom: 20, left: 20, child: Text(item.description)),
        ],
      ),
    );
  }
}
