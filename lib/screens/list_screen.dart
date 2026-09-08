import 'package:flutter/material.dart' hide SearchBar; // Masque le SearchBar natif pour éviter le conflit
import 'package:go_router/go_router.dart';
import '../data/items.dart';
import '../widgets/search_bar.dart';
import '../widgets/custom_card.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filtered = sampleItems
        .where((i) => i.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Column(
        children: [
          SearchBarWidget(
            onChanged: (val) => setState(() => query = val),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
                childAspectRatio: 3 / 2, // Ajuste le ratio largeur/hauteur des cartes
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: filtered.length,
              itemBuilder: (context, index) {
                final item = filtered[index];
                return GestureDetector(
                  onTap: () => context.go('/detail/${item.id}'),
                  child: CustomCard(item: item),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}