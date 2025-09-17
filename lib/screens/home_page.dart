import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/search_bar.dart';
import '../widgets/league_section.dart';
import '../widgets/live_match_card.dart';
import '../widgets/match_lineup.dart';
import '../widgets/dark_mode_toggle.dart';

class HomePage extends StatelessWidget {
  final void Function(bool) onToggleTheme;
  final bool isDark;
  const HomePage({super.key, required this.onToggleTheme, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Header(),
        centerTitle: false,
        actions: [
          DarkModeToggle(isDark: isDark, onChanged: onToggleTheme),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SearchBarWidget(),
          const SizedBox(height: 16),
          const LeagueSection(leagues: [
            'Saudi Pro League',
            'English Premier League',
            'UEFA Champions League',
            'La Liga',
          ]),
          const SizedBox(height: 16),
          const LiveMatchCard(
            homeTeam: 'Al-Nassr',
            awayTeam: 'Al-Hilal',
            homeScore: 1,
            awayScore: 2,
            minute: 67,
            status: 'Second Half',
          ),
          const SizedBox(height: 16),
          const MatchLineup(
            home: ['GK', 'RB', 'CB', 'CB', 'LB', 'RM', 'CM', 'CM', 'LM', 'ST', 'ST'],
            away: ['GK', 'RB', 'CB', 'CB', 'LB', 'DM', 'CM', 'AM', 'RW', 'LW', 'ST'],
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () => Navigator.pushNamed(context, '/players'),
            child: const Text('Open Players Page'),
          ),
        ],
      ),
    );
  }
}

