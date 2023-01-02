import 'package:get/get.dart';
import 'package:nontonin/features/splash_screen/splash_screen_controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashScreenController>(
      SplashScreenController(),
    );
  }
}
