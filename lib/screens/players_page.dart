import 'package:flutter/material.dart';

class PlayersPage extends StatelessWidget {
  const PlayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final players = List<String>.generate(15, (i) => 'Player ${i + 1}');
    return Scaffold(
      appBar: AppBar(title: const Text('Players')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: players.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (_, i) {
          return ListTile(
            leading: CircleAvatar(child: Text(players[i].split(' ').last)),
            title: Text(players[i]),
            subtitle: const Text('Position: MID • Team: TOP1'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          );
        },
      ),
    );
  }
}
