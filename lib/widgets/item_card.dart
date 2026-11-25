import 'package:material_ui/material_ui.dart';
import 'package:myportfolio_mobile/screens/educations_page.dart';
import 'package:myportfolio_mobile/screens/experiences_page.dart';
import 'package:myportfolio_mobile/screens/item_form.dart';
import 'package:myportfolio_mobile/screens/menu.dart';
import 'package:myportfolio_mobile/screens/projects_page.dart';
import 'package:myportfolio_mobile/screens/skills_page.dart';
import 'package:myportfolio_mobile/services/auth_state.dart';
import 'package:myportfolio_mobile/widgets/auth_guard.dart'; // adjust if ensureLoggedIn lives elsewhere
import 'package:provider/provider.dart';

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
        onTap: () async {
          switch (item.name) {
            case 'Projects':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProjectsPage()),
              );
              break;
            case 'Educations':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EducationsPage()),
              );
              break;
            case 'Experiences':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExperiencesPage(),
                ),
              );
              break;
            case 'Skills':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SkillsPage()),
              );
              break;
            case 'Add Item':
              final ok = await ensureLoggedIn(context);
              if (!ok || !context.mounted) return;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemFormPage()),
              );
              break;
            case 'Logout':
              final authState = context.read<AuthState>();
              if (!authState.isLoggedIn) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You are not logged in.')),
                );
                return;
              }
              await authState.logout();
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logged out successfully.')),
              );
              break;
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
