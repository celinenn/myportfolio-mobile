import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/models/project.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final hasImage = project.projectImageUrl.trim().isNotEmpty;
    final hasUrl = project.projectUrl.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: Text(project.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasImage) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  project.projectImageUrl.trim(),
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: double.infinity,
                    height: 180,
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceContainerHighest,
                    alignment: Alignment.center,
                    child: const Text('Unable to load project image.'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
            Text(
              project.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if (project.techStack.trim().isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [Chip(label: Text(project.techStack))],
              ),
            ],
            const SizedBox(height: 16),
            Text('Description', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 6),
            Text(
              project.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (hasUrl) ...[
              const SizedBox(height: 20),
              Text(
                'Project URL',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 6),
              SelectableText(project.projectUrl),
            ],
          ],
        ),
      ),
    );
  }
}
