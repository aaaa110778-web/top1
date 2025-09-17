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
    return Card(
      child: ListTile(
        title: Text("$homeTeam vs $awayTeam"),
        subtitle: Text("Score: $homeScore - $awayScore, $status ($minute')"),
      ),
    );
  }
}
