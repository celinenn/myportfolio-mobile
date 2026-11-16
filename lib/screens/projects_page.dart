import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/widgets/section_card.dart';
import 'package:myportfolio_mobile/widgets/section_page.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPage(
      title: 'My Projects',
      children: [
        SectionCard(
          title: 'WheelyMate (Assistive Wheelchair)',
          subtitle:
              'Multi-sensor assistive wheelchair system using ESP32, environmental sensors, and servo canopy.',
        ),
        // Add more
      ],
    );
  }
}