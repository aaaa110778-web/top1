import 'package:flutter/material.dart';

class LeagueSection extends StatelessWidget {
  final List<String> leagues;
  const LeagueSection({super.key, required this.leagues});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Leagues', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: leagues.map((l) {
            return Chip(
              label: Text(l),
              avatar: const Icon(Icons.emoji_events),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            );
          }).toList(),
        ),
      ],
    );
  }
}

