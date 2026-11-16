import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/widgets/section_card.dart';
import 'package:myportfolio_mobile/widgets/section_page.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPage(
      title: 'My Experiences',
      children: [
        SectionCard(
          title: 'VPIC of Visual Design Division in Open House Fasilkom 2026',
          subtitle:
              'Co-led a team of 13 people in designing and creating assets used in the Open House Fasilkom 2026 website, Instagram feed, etc.',
        ),
        // Add more
      ],
    );
  }
}
