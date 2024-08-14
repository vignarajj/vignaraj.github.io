part of 'app_pages.dart';

abstract class AppRoutes {
  static const home = _Paths.home;
  static const skill = _Paths.skill;
  static const coreCompetency = _Paths.coreCompetency;
  AppRoutes._();
}

abstract class _Paths {
  static const home = '/home';
  static const skill = '/skill';
  static const coreCompetency = '/core-competency';

  _Paths._();
}
