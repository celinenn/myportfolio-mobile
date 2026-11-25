import 'package:flutter/material.dart';
import 'package:myportfolio_mobile/models/education.dart';

class EducationDetailScreen extends StatelessWidget {
  const EducationDetailScreen({super.key, required this.education});

  final Education education;

  String _formatDate(DateTime? date) {
    if (date == null) return 'Present';
    final local = date.toLocal();
    final month = local.month.toString().padLeft(2, '0');
    final day = local.day.toString().padLeft(2, '0');
    return '${local.year}-$month-$day';
  }

  @override
  Widget build(BuildContext context) {
    final thumbnailUrl = education.thumbnail?.trim() ?? '';
    final hasThumbnail = thumbnailUrl.isNotEmpty;
    final hasPeriod = education.startedAt != null || education.endedAt != null;

    return Scaffold(
      appBar: AppBar(title: Text(education.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasThumbnail) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  thumbnailUrl,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: double.infinity,
                    height: 160,
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceContainerHighest,
                    alignment: Alignment.center,
                    child: const Text('Unable to load thumbnail.'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
            Text(
              education.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 6),
            Text(
              education.school,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text(education.category)),
                if (education.isOngoing) const Chip(label: Text('Ongoing')),
              ],
            ),
            if (hasPeriod) ...[
              const SizedBox(height: 12),
              Text(
                '${_formatDate(education.startedAt)} – ${_formatDate(education.endedAt)}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
