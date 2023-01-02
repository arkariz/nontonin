import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nontonin/core/route/app_pages.dart';
import 'package:nontonin/core/route/app_routes.dart';
import 'package:nontonin/core/theme/theme_constant.dart';
import 'package:nontonin/core/theme/theme_manager.dart';
import 'package:nontonin/core/utils/initializer.dart';

void main() {
  Initializer.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final themeManager = ThemeManager();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: themeManager.themeMode,
      getPages: AppPages.routes,
      initialRoute: Routes.SPLASH_SCREEN,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
