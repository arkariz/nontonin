import 'dart:async';

import 'package:get/get.dart';

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
        Get.offNamed("page");
      },
    );
  }
}
