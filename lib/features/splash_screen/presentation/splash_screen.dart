import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nontonin/core/theme/colors.dart';
import 'package:nontonin/core/theme/theme_constant.dart';
import 'package:nontonin/core/utils/size_config.dart';
import 'package:nontonin/features/splash_screen/presentation/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.initialize(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                ColorsConstant.blackLight,
                ColorsConstant.blackDark,
              ]),
        ),
        child: Center(
          child: Text(
            "NONTONIN",
            style: textThemehemeContext(context).titleLarge,
          ),
        ),
      ),
    );
  }
}
