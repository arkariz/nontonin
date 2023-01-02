import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nontonin/core/theme/theme_constant.dart';
import 'package:nontonin/features/splash_screen/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "NONTONIN",
          style: textThemehemeContext(context).titleLarge,
        ),
      ),
    );
  }
}
