import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            avatar: SvgPicture.asset(
              skill.iconPath,
              color: Colors.white,
              width: 18,
              height: 18,
            ),
          ),
        ),
      ),
    );
  }
}
