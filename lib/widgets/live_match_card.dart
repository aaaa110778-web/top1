import 'package:flutter/material.dart';

class LiveMatchCard extends StatelessWidget {
  final String homeTeam;
  final String awayTeam;
  final int homeScore;
  final int awayScore;
  final int minute;
  final String status;

  const LiveMatchCard({
    super.key,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    required this.minute,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('LIVE • $status • ${minute}\'', style: TextStyle(color: scheme.primary)),
                const Icon(Icons.live_tv),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _teamTile(homeTeam, homeScore, TextAlign.start)),
                Text('$homeScore - $awayScore', style: Theme.of(context).textTheme.headlineSmall),
                Expanded(child: _teamTile(awayTeam, awayScore, TextAlign.end)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _teamTile(String name, int score, TextAlign align) {
    return Column(
      crossAxisAlignment: align == TextAlign.start ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(name, textAlign: align, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 4),
        Text('Score: $score', textAlign: align),
      ],
    );
  }
}

