import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchBarWidget({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged, // Assurez-vous d'avoir 'onChanged' complet
      decoration: const InputDecoration(
        hintText: 'Rechercher...',
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}