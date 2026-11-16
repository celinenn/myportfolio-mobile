import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/menu.dart';
import 'package:myportfolio_mobile/educations_page.dart';
import 'package:myportfolio_mobile/experiences_page.dart';
import 'package:myportfolio_mobile/projects_page.dart';
import 'package:myportfolio_mobile/skills_page.dart';
import 'package:myportfolio_mobile/item_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Portfolio',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Explore personal projects and experiences!',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          // Home Route
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          // Educations Route
          ListTile(
            leading: const Icon(Icons.school_outlined),
            title: const Text('Educations'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const EducationsPage()),
              );
            },
          ),
          // Experiences Route
          ListTile(
            leading: const Icon(Icons.work_history_outlined),
            title: const Text('Experiences'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExperiencesPage(),
                ),
              );
            },
          ),
          // Projects Route
          ListTile(
            leading: const Icon(Icons.folder_outlined),
            title: const Text('Projects'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ProjectsPage()),
              );
            },
          ),
          // Skills Route
          ListTile(
            leading: const Icon(Icons.psychology_outlined),
            title: const Text('Skills'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SkillsPage()),
              );
            },
          ),
          // Add Project Form Route
          ListTile(
            leading: const Icon(Icons.add_circle_outline),
            title: const Text('Add Item'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ItemFormPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
