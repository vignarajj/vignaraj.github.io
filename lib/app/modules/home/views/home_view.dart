import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/shared/theme/app_colors.dart';
import 'package:portfolio/shared/theme/text_styles.dart';
import 'package:portfolio/shared/widgets/contact_buttons.dart';
import 'package:portfolio/shared/widgets/skill_chip.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key});

  @override
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                        'VIGNARAJ R.R.',
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
                        'TECH LEAD (MOBILE ENGINEERING)',
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Text(
                'Experienced Tech Lead with 13+ years in mobile app development. Proficient in Android, Kotlin, Java, Flutter, and Dart. Skilled in testing (manual, unit, and automation), CI/CD with Code Magic, and project management using Jira. Expert in code reviews, documentation, and UI/UX design using Photoshop and Figma.',
                textAlign: TextAlign.center,
                style: TextStyles.consoleBody,
              ),
            ),
            // Skills Section with Bounce Animation
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 10,
                children: controller.skills
                    .map((skill) => SkillChip(
                          skill: skill,
                          onTap: () => controller.openSkillDetail(skill),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            // Leadership Skills
            const Text(
              'Core Competencies',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(height: 10),
                  BulletPointChip(text: 'Team Management'),
                  BulletPointChip(text: 'Project Planning'),
                  BulletPointChip(text: 'Mentorship and Coaching'),
                  BulletPointChip(text: 'Stakeholder Communication'),
                ],
              ),
            ),
            // Contact Section
            const ContactButtons(),
            // Footer Section
            Container(
              padding: const EdgeInsets.all(30),
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Developed using Flutter',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const SizedBox(height: 5),
                  SvgPicture.asset(
                    'assets/images/flutter.svg',
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPointChip extends StatelessWidget {
  final String text;

  const BulletPointChip({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.appAccentColor,
      child: Chip(
        label: Text(text),
        backgroundColor: AppColors.appAccentColor.withOpacity(0.9),
        labelStyle: const TextStyle(color: Colors.white),
        avatar: const Icon(Icons.check, color: Colors.white),
      ),
    );
  }
}
