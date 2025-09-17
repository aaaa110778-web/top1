import 'package:flutter/material.dart';

class DarkModeToggle extends StatelessWidget {
  final bool isDark;
  final ValueChanged<bool> onChanged;

  const DarkModeToggle({super.key, required this.isDark, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(value: isDark, onChanged: onChanged);
  }
}
