import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/screens/menu.dart';
import 'package:myportfolio_mobile/screens/item_form.dart';
import 'package:myportfolio_mobile/screens/projects_page.dart';
import 'package:myportfolio_mobile/screens/educations_page.dart';
import 'package:myportfolio_mobile/screens/experiences_page.dart';
import 'package:myportfolio_mobile/screens/skills_page.dart';

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Widget? page;
          switch (item.name) {
            case 'Projects':
              page = const ProjectsPage();
              break;
            case 'Educations':
              page = const EducationsPage();
              break;
            case 'Experiences':
              page = const ExperiencesPage();
              break;
            case 'Skills':
              page = const SkillsPage();
              break;
            case 'Add Item':
              page = const ItemFormPage();
              break;
          }
          if (page != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page!),
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(item.icon, color: Colors.white, size: 36),
              const SizedBox(height: 8),
              Text(
                item.name,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}