import 'package:get/get.dart';
import 'package:portfolio/routes/app_pages.dart';
import 'package:portfolio/shared/models/core_compentency.dart';
import 'package:portfolio/shared/models/skill_model.dart';

class HomeController extends GetxController {
  final skills = [
    Skill(
      name: 'Flutter',
      description: 'Building cross-platform apps with a single codebase.',
      proficiency: 0.9,
      iconPath: 'assets/images/flutter.svg',
    ),
    Skill(
      name: 'Dart',
      description: 'Primary language for Flutter, focused on UI development.',
      proficiency: 0.85,
      iconPath: 'assets/images/dart.svg',
    ),
    Skill(
      name: 'JavaScript',
      description:
          'Web development and scripting for dynamic web applications.',
      proficiency: 0.6,
      iconPath: 'assets/images/javascript.svg',
    ),
    Skill(
      name: 'Android',
      description: 'Native mobile app development for the Android platform.',
      proficiency: 0.7,
      iconPath: 'assets/images/android.svg',
    ),
    Skill(
      name: 'Kotlin',
      description: 'Modern programming language for Android development.',
      proficiency: 0.7,
      iconPath: 'assets/images/kotlin.svg',
    ),
    Skill(
      name: 'Java',
      description:
          'Object-oriented programming language for various platforms.',
      proficiency: 0.8,
      iconPath: 'assets/images/java.svg', // Using coffee icon to represent Java
    ),
    Skill(
      name: 'POSTMAN',
      description: 'API testing tool for building and testing APIs.',
      proficiency: 0.8,
      iconPath: 'assets/images/postman.svg',
    ),
    Skill(
      name: 'Manual Testing',
      description: 'Performing manual testing to ensure software quality.',
      proficiency: 0.9,
      iconPath: 'assets/images/manual.svg',
    ),
    Skill(
      name: 'Automation Testing',
      description: 'Using automation tools to test software more efficiently.',
      proficiency: 0.7,
      iconPath: 'assets/images/automation.svg',
    ),
    Skill(
      name: 'Code Magic',
      description: 'CI/CD tool for automating build and deployment processes.',
      proficiency: 0.6,
      iconPath: 'assets/images/code_magic.svg',
    ),
    Skill(
      name: 'Jira',
      description: 'Project management and issue tracking tool.',
      proficiency: 0.7,
      iconPath: 'assets/images/jira.svg',
    ),
    Skill(
      name: 'Documentation',
      description: 'Writing clear and concise documentation for projects.',
      proficiency: 0.9,
      iconPath: 'assets/images/documentation.svg',
    ),
    Skill(
      name: 'Code Review',
      description:
          'Reviewing code to ensure quality and adherence to standards.',
      proficiency: 0.9,
      iconPath: 'assets/images/review.svg',
    ),
    Skill(
      name: 'Git',
      description: 'Version control system for managing codebases.',
      proficiency: 0.7,
      iconPath: 'assets/images/git.svg',
    ),
    Skill(
      name: 'Photoshop',
      description: 'Image editing and graphic design using Adobe Photoshop.',
      proficiency: 0.5,
      iconPath: 'assets/images/photoshop.svg',
    ),
    Skill(
      name: 'Figma',
      description: 'UI/UX design tool for creating interactive designs.',
      proficiency: 0.5,
      iconPath: 'assets/images/medium.svg',
    ),
    Skill(
      name: 'Architecture Formation',
      description: 'Designing software architecture for scalable solutions.',
      proficiency: 0.6,
      iconPath: 'assets/images/architecture.svg',
    ),
    Skill(
      name: 'SonarQube/Lint',
      description: 'Code quality analysis and static code analysis tools.',
      proficiency: 0.6,
      iconPath: 'assets/images/lint.svg',
    ),
    Skill(
      name: 'GitHub Workflow',
      description:
          'Automating software development workflows with GitHub Actions.',
      proficiency: 0.6,
      iconPath: 'assets/images/github_skill.svg',
    ),
    Skill(
      name: "Rest API's",
      description:
      'Interface for sharing data between applications.',
      proficiency: 0.6,
      iconPath: 'assets/images/apis.svg',
    ),
    Skill(
      name: 'Web Sockets',
      description:
      'Real-time, two-way communication channel.',
      proficiency: 0.6,
      iconPath: 'assets/images/websocket.svg',
    ),
    Skill(
      name: 'POS(Point of Sale)',
      description:
      'Transaction hub for retail sales.',
      proficiency: 0.6,
      iconPath: 'assets/images/pos.svg',
    ),
    Skill(
      name: 'Device Integration',
      description:
      'Wireless device connectivity expert',
      proficiency: 0.6,
      iconPath: 'assets/images/connectivity.svg',
    ),
    Skill(
      name: 'ML/AI',
      description:
      'Expert in building intelligent systems.',
      proficiency: 0.6,
      iconPath: 'assets/images/ai.svg',
    ),
  ].obs;

  final List<CoreCompetency> coreCompetencies = [
    CoreCompetency(
      title: 'Team Management',
      description:
      'Experience in leading diverse teams, fostering collaboration, and ensuring successful project delivery through effective communication and strategic planning.',
    ),
    CoreCompetency(
      title: 'Project Planning',
      description:
      'Skilled in creating detailed project plans, timelines, and resource allocation strategies to ensure timely and successful completion of projects.',
    ),
    CoreCompetency(
      title: 'Mentorship and Coaching',
      description:
      'Passionate about mentoring and coaching team members to help them achieve their full potential, guiding them through technical challenges and career development.',
    ),
    CoreCompetency(
      title: 'Audience Engagement',
      description:
      'Expertise in engaging with different audiences, understanding their needs, and delivering tailored solutions that resonate and achieve desired outcomes.',
    ),
  ];

  void openSkillDetail(Skill skill) {
    Get.toNamed(AppRoutes.skill, arguments: skill);
  }
}
