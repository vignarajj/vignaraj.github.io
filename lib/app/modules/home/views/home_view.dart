import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Vignaraj R.R.',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tech Lead (Mobile Engineering)',
                    style: TextStyle(fontSize: 24, color: Colors.amberAccent),
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
                style: TextStyle(fontSize: 18, height: 1.5),
              ),
            ),
            // Skills Section
            const Padding(
              padding: EdgeInsets.all(30),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  SkillChip(label: 'Android', icon: Icons.android),
                  SkillChip(label: 'Kotlin', icon: Icons.code),
                  SkillChip(label: 'Java', icon: Icons.coffee),
                  SkillChip(label: 'Flutter', icon: Icons.mobile_friendly),
                  SkillChip(label: 'Dart', icon: Icons.code),
                  SkillChip(label: 'Postman', icon: Icons.build),
                  SkillChip(label: 'Manual Testing', icon: Icons.bug_report),
                  SkillChip(label: 'Unit Testing', icon: Icons.science),
                  SkillChip(label: 'Automation Testing', icon: Icons.build),
                  SkillChip(label: 'Code Magic (CI/CD)', icon: Icons.mood),
                  SkillChip(label: 'Jira', icon: Icons.task),
                  SkillChip(label: 'Documentation', icon: Icons.book),
                  SkillChip(label: 'Code Review', icon: Icons.check),
                  SkillChip(label: 'Git', icon: Icons.merge_type),
                  SkillChip(label: 'Photoshop', icon: Icons.edit),
                  SkillChip(label: 'Figma', icon: Icons.design_services),
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
}
