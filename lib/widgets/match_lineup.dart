import 'package:flutter/material.dart';

class MatchLineup extends StatelessWidget {
  final List<String> home;
  final List<String> away;

  const MatchLineup({super.key, required this.home, required this.away});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Line-ups', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: _lineupColumn('Home', home)),
                const SizedBox(width: 16),
                Expanded(child: _lineupColumn('Away', away)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _lineupColumn(String label, List<String> players) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        ...players.map((p) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  const Icon(Icons.person, size: 18),
                  const SizedBox(width: 8),
                  Expanded(child: Text(p)),
                ],
              ),
            )),
      ],
    );
  }
}

