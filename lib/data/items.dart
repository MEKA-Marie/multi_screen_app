import '../models/item.dart';

const List<Item> sampleItems = [
  Item(
    id: '1',
    title: 'Pasta Primavera',
    description: 'Pasta with seasonal vegetables and a light herb sauce.',
  ),
  Item(
    id: '2',
    title: 'Tomato Risotto',
    description: 'Creamy risotto with roasted tomatoes and parmesan.',
  ),
  Item(
    id: '3',
    title: 'Lemon Tart',
    description: 'A bright lemon tart with a crisp pastry crust.',
  ),
];

Item? findItemById(String id) {
  for (final item in sampleItems) {
    if (item.id == id) return item;
  }
  return null;
}