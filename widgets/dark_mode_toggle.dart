import 'package:flutter/material.dart';

class DarkModeToggle extends StatelessWidget {
  final bool isDark;
  final void Function(bool) onChanged;

  const DarkModeToggle({super.key, required this.isDark, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.dark_mode),
        Switch(value: isDark, onChanged: onChanged),
      ],
    );
  }
}
