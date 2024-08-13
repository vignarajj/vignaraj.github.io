part of 'app_pages.dart';

abstract class AppRoutes {
  static const home = _Paths.home;
  static const skill = _Paths.skill;
  AppRoutes._();
}

abstract class _Paths {
  static const home = '/home';
  static const skill = '/skill';

  _Paths._();
}
