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
        title: const Text('Recipes'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final columns = constraints.maxWidth >= 900
              ? 3
              : constraints.maxWidth >= 600
                  ? 2
                  : 1;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: SearchBarWidget(
                  onChanged: (val) => setState(() => query = val),
                ),
              ),
              Expanded(
                child: filtered.isEmpty
                    ? const Center(child: Text('No recipes found'))
                    : GridView.builder(
                        padding: const EdgeInsets.all(16),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columns,
                          childAspectRatio: columns == 1 ? 3.2 : 1.45,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: filtered.length,
                        itemBuilder: (context, index) {
                          final item = filtered[index];
                          return GestureDetector(
                            onTap: () => context.goNamed(
                              'recipe-detail',
                              pathParameters: {'id': item.id},
                            ),
                            child: CustomCard(item: item),
                          );
                        },
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}