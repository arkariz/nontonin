import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nontonin/features/navigation_bar/navigation_bar_controller.dart';
import 'package:nontonin/main.dart';

class NavigationBarContainer extends GetView<NavigationBarController> {
  const NavigationBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        body: getPages(controller.activeNavBar),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: controller.activeNavBar,
          onTap: ((int value) {
            controller.activeNavBar = value;
          }),
          items: [
            BottomNavigationBarItem(
              icon: controller.getHomeIcon(controller.activeNavBar),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: controller.getDiscoverIcon(controller.activeNavBar),
              label: "discover",
            ),
          ],
        ),
      ),
    );
  }

  Widget getPages(int activeNavbar) {
    final pages = [
      MyHomePage(),
      MyHomePage(),
    ];

    return pages[activeNavbar];
  }
}
