import 'package:flutter/material.dart';
import '../models/item.dart';

class CustomCard extends StatelessWidget {
  final Item item;
  const CustomCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.description),
      ),
    );
  }
}
