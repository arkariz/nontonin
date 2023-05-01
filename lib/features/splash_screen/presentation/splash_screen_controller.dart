import 'dart:async';

import 'package:get/get.dart';
import 'package:nontonin/core/route/app_routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    navigateToHome();
    super.onInit();
  }

  void navigateToHome() async {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offNamed(Routes.NAVIGATION_BAR);
      },
    );
  }
}
