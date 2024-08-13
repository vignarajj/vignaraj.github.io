import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/shared/theme/text_styles.dart';
import 'package:portfolio/shared/widgets/skill_chip.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage:
                        AssetImage("assets/images/profile_pic.jpeg"),
                  ),
                  const SizedBox(height: 20),
                  // Typing Animation for Name
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Vignaraj R.R.',
                        textStyle: TextStyles.consoleHeader,
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                  const SizedBox(height: 10),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Tech Lead (Mobile Engineering)',
                        textStyle: TextStyles.consoleSubHeader,
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                ],
              ),
            ),
            // Summary Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Text(
                'Experienced Tech Lead with 13+ years in mobile app development. Proficient in Android, Kotlin, Java, Flutter, and Dart. Skilled in testing (manual, unit, and automation), CI/CD with Code Magic, and project management using Jira. Expert in code reviews, documentation, and UI/UX design using Photoshop and Figma.',
                textAlign: TextAlign.center,
                style: TextStyles.consoleBody,
              ),
            ),
            // Skills Section with Bounce Animation
            Padding(
              padding: const EdgeInsets.all(30),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  _buildAnimatedSkillChip('Android', Icons.android),
                  _buildAnimatedSkillChip('Kotlin', Icons.code),
                  _buildAnimatedSkillChip('Java', Icons.coffee),
                  _buildAnimatedSkillChip('Flutter', Icons.mobile_friendly),
                  _buildAnimatedSkillChip('Dart', Icons.code),
                  _buildAnimatedSkillChip('Postman', Icons.build),
                  _buildAnimatedSkillChip('Manual Testing', Icons.bug_report),
                  _buildAnimatedSkillChip('Unit Testing', Icons.science),
                  _buildAnimatedSkillChip('Automation Testing', Icons.build),
                  _buildAnimatedSkillChip('Code Magic (CI/CD)', Icons.mood),
                  _buildAnimatedSkillChip('Jira', Icons.task),
                  _buildAnimatedSkillChip('Documentation', Icons.book),
                  _buildAnimatedSkillChip('Code Review', Icons.check),
                  _buildAnimatedSkillChip('Git', Icons.merge_type),
                  _buildAnimatedSkillChip('Photoshop', Icons.edit),
                  _buildAnimatedSkillChip('Figma', Icons.design_services),
                ],
              ),
            ),
            // Footer Section
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.black,
              child: const Text(
                '© 2024 Vignaraj R.R.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Custom method to create animated skill chips with a bounce effect
  Widget _buildAnimatedSkillChip(String label, IconData icon) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 1),
      curve: Curves.bounceOut,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: SkillChip(label: label, icon: icon),
        );
      },
    );
  }
}
