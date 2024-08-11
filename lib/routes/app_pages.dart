import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = _Paths.home;
  static final routes = [
    GetPage(name: _Paths.home, page: () => const HomeView())
  ];
}
