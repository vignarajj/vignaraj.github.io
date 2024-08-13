import 'package:flutter/material.dart';
import 'package:portfolio/shared/models/skill_model.dart';
import 'package:portfolio/shared/theme/app_colors.dart';

class SkillChip extends StatelessWidget {
  final Skill skill;
  final VoidCallback onTap;

  const SkillChip({required this.skill, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: skill.name,
        child: Material(
          color: Colors.transparent, // Ensure transparency
          child: Chip(
            label: Text(skill.name),
            backgroundColor: AppColors.appAccentColor,
            labelStyle: const TextStyle(color: Colors.white),
            avatar: Icon(
              skill.icon,
              color: Colors.white,
              size: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
