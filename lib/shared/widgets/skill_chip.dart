import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String label;
  final IconData icon;

  const SkillChip({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.grey[800],
      label: Text(label),
      avatar: Icon(icon, color: Colors.amberAccent),
    );
  }
}
