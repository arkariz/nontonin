import 'package:get/route_manager.dart';
import 'package:nontonin/core/route/app_routes.dart';
import 'package:nontonin/core/widgets/splash_screen.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => const SplashScreen(),
    ),
  ];
}
