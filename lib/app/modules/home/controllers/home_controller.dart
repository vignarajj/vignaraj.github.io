import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/routes/app_pages.dart';
import 'package:portfolio/shared/models/skill_model.dart';

class HomeController extends GetxController {
  final skills = [
    Skill(
      name: 'Flutter',
      description: 'Building cross-platform apps with a single codebase.',
      proficiency: 0.9,
      icon: Icons.mobile_friendly,
    ),
    Skill(
      name: 'Dart',
      description: 'Primary language for Flutter, focused on UI development.',
      proficiency: 0.85,
      icon: Icons.code,
    ),
    Skill(
      name: 'JavaScript',
      description: 'Web development and scripting for dynamic web applications.',
      proficiency: 0.6,
      icon: Icons.language,
    ),
    Skill(
      name: 'Android',
      description: 'Native mobile app development for the Android platform.',
      proficiency: 0.7,
      icon: Icons.android,
    ),
    Skill(
      name: 'Kotlin',
      description: 'Modern programming language for Android development.',
      proficiency: 0.7,
      icon: Icons.code,
    ),
    Skill(
      name: 'Java',
      description: 'Object-oriented programming language for various platforms.',
      proficiency: 0.8,
      icon: Icons.coffee, // Using coffee icon to represent Java
    ),
    Skill(
      name: 'POSTMAN',
      description: 'API testing tool for building and testing APIs.',
      proficiency: 0.8,
      icon: Icons.http,
    ),
    Skill(
      name: 'Manual Testing',
      description: 'Performing manual testing to ensure software quality.',
      proficiency: 0.9,
      icon: Icons.bug_report,
    ),
    Skill(
      name: 'Automation Testing',
      description: 'Using automation tools to test software more efficiently.',
      proficiency: 0.7,
      icon: Icons.build,
    ),
    Skill(
      name: 'Code Magic',
      description: 'CI/CD tool for automating build and deployment processes.',
      proficiency: 0.6,
      icon: Icons.cloud,
    ),
    Skill(
      name: 'Jira',
      description: 'Project management and issue tracking tool.',
      proficiency: 0.7,
      icon: Icons.task,
    ),
    Skill(
      name: 'Documentation',
      description: 'Writing clear and concise documentation for projects.',
      proficiency: 0.9,
      icon: Icons.book,
    ),
    Skill(
      name: 'Code Review',
      description: 'Reviewing code to ensure quality and adherence to standards.',
      proficiency: 0.9,
      icon: Icons.check,
    ),
    Skill(
      name: 'Git',
      description: 'Version control system for managing codebases.',
      proficiency: 0.7,
      icon: Icons.merge_type,
    ),
    Skill(
      name: 'Photoshop',
      description: 'Image editing and graphic design using Adobe Photoshop.',
      proficiency: 0.5,
      icon: Icons.edit,
    ),
    Skill(
      name: 'Figma',
      description: 'UI/UX design tool for creating interactive designs.',
      proficiency: 0.5,
      icon: Icons.design_services,
    ),
    Skill(
      name: 'Architecture Formation',
      description: 'Designing software architecture for scalable solutions.',
      proficiency: 0.6,
      icon: Icons.architecture,
    ),
    Skill(
      name: 'SonarQube/Lint',
      description: 'Code quality analysis and static code analysis tools.',
      proficiency: 0.6,
      icon: Icons.analytics,
    ),
    Skill(
      name: 'GitHub Workflow',
      description: 'Automating software development workflows with GitHub Actions.',
      proficiency: 0.6,
      icon: Icons.workspaces,
    ),
  ].obs;

  void openSkillDetail(Skill skill) {
    Get.toNamed(AppRoutes.skill, arguments: skill);
  }
}
