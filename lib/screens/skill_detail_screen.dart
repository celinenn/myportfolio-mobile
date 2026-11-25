import 'package:material_ui/material_ui.dart';
import 'package:myportfolio_mobile/models/skill.dart';

class SkillDetailScreen extends StatelessWidget {
  const SkillDetailScreen({super.key, required this.skill});

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(skill.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(skill.title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('Type: ${skill.type}')),
                Chip(label: Text('Proficiency: ${skill.proficiency}')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
