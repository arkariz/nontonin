import 'package:get/route_manager.dart';
import 'package:nontonin/core/route/app_routes.dart';
import 'package:nontonin/features/splash_screen/splash_screen.dart';
import 'package:nontonin/features/splash_screen/splash_screen_binding.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
    ),
  ];
}
