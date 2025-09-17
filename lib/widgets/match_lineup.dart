import 'package:flutter/material.dart';

class MatchLineup extends StatelessWidget {
  final List<String> home;
  final List<String> away;

  const MatchLineup({super.key, required this.home, required this.away});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Home Lineup:"),
        Text(home.join(", ")),
        const SizedBox(height: 8),
        const Text("Away Lineup:"),
        Text(away.join(", ")),
      ],
    );
  }
}
