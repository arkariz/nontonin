import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nontonin/core/theme/icons_path.dart';

class NavigationBarController extends GetxController {
  final _activeNavBar = 0.obs;

  set activeNavBar(int value) => _activeNavBar.value = value;
  int get activeNavBar => _activeNavBar.value;

  Image getHomeIcon(int index) {
    if (index == 0) {
      return Image.asset(IconsPath.activeHomeIcon);
    } else {
      return Image.asset(IconsPath.inactiveHomeIcon);
    }
  }

  Image getDiscoverIcon(int index) {
    if (index == 1) {
      return Image.asset(IconsPath.activeDiscoverIcon);
    } else {
      return Image.asset(IconsPath.inactiveDiscoverIcon);
    }
  }
}
