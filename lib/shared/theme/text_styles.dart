import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme/app_colors.dart';

class TextStyles {
  static const TextStyle consoleHeader = TextStyle(
    fontFamily: 'SourceCodePro',
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle consoleSubHeader = TextStyle(
    fontFamily: 'SourceCodePro',
    fontSize: 24,
    color: AppColors.appAccentColor,
  );

  static const TextStyle consoleBody = TextStyle(
    fontFamily: 'SourceCodePro',
    fontSize: 18,
    height: 1.5,
  );

  static const TextStyle consoleFooter = TextStyle(
    fontFamily: 'SourceCodePro',
    fontSize: 16,
    color: Colors.white70,
  );

  static const TextStyle consoleSkillChip = TextStyle(
    fontFamily: 'SourceCodePro',
  );
}
