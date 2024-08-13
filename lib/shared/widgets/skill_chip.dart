import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme/app_colors.dart';
import 'package:portfolio/shared/theme/text_styles.dart';

class SkillChip extends StatelessWidget {
  final String label;
  final IconData icon;

  const SkillChip({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.grey[800],
      label: Text(label, style: TextStyles.consoleSkillChip),
      avatar: Icon(
        icon,
        color: AppColors.appAccentColor,
      ),
    );
  }
}
