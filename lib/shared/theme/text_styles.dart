import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme/app_colors.dart';

class TextStyles {
  static const TextStyle consoleHeader = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle consoleSubHeader = TextStyle(
    fontSize: 24,
    color: AppColors.appAccentColor,
  );

  static const TextStyle consoleBody = TextStyle(
    fontSize: 18,
    height: 1.5,
  );

  static const TextStyle consoleFooter = TextStyle(
    fontSize: 16,
    color: Colors.white70,
  );
}
