import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/widgets/section_card.dart';
import 'package:myportfolio_mobile/widgets/section_page.dart';

class EducationsPage extends StatelessWidget {
  const EducationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionPage(
      title: 'My Education',
      children: [
        SectionCard(title: '38 State High School'),
        // Add more
      ],
    );
  }
}
