import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/widgets/section_card.dart';
import 'package:myportfolio_mobile/widgets/section_page.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPage(
      title: 'My Skills',
      children: [
        SectionCard(title: 'Java', subtitle: 'Advanced'),
        // Add more
      ],
    );
  }
}
