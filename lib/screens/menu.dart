import 'package:material_ui/material_ui.dart';
import 'package:myportfolio_mobile/widgets/left_drawer.dart';
import 'package:myportfolio_mobile/widgets/item_card.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  const ItemHomepage(this.name, this.icon, this.color);
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<ItemHomepage> items = const [
    ItemHomepage('Projects', Icons.code, Colors.indigo),
    ItemHomepage('Educations', Icons.school, Colors.teal),
    ItemHomepage('Experiences', Icons.work, Colors.deepOrange),
    ItemHomepage('Skills', Icons.build, Colors.purple),
    ItemHomepage('Add Item', Icons.add, Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: items.map((item) => ItemCard(item)).toList(),
        ),
      ),
    );
  }
}
