import 'package:flutter/material.dart';

class LeagueSection extends StatelessWidget {
  final List<String> leagues;
  const LeagueSection({super.key, required this.leagues});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: leagues.map((league) => Text("• $league")).toList(),
    );
  }
}
