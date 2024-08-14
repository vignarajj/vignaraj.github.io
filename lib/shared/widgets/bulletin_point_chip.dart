import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/routes/app_pages.dart';
import 'package:portfolio/shared/models/core_compentency.dart';
import 'package:portfolio/shared/theme/app_colors.dart';

class BulletPointChip extends StatelessWidget {
  final String text;
  final CoreCompetency? competency;
  final bool isNavigable;

  const BulletPointChip({
    required this.text,
    this.competency,
    this.isNavigable = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isNavigable && competency != null
          ? () {
        Get.toNamed(AppRoutes.coreCompetency, arguments: competency);
      }
          : null,
      child: Material(
        color: Colors.transparent,
        child: Chip(
          label: Text(text),
          backgroundColor: AppColors.appAccentColor.withOpacity(0.9),
          labelStyle: const TextStyle(color: Colors.white),
          avatar: const Icon(Icons.check, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Adjust for more or less rounding
          ),
        ),
      ),
    );
  }
}
