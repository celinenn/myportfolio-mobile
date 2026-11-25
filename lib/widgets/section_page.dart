import 'package:flutter/material.dart';

class SectionPage extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SectionPage({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: ListView(padding: const EdgeInsets.all(16.0), children: children),
    );
  }
}
