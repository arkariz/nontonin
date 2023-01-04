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
        body: getPages(controller.activeNavBar),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.activeNavBar,
          onTap: ((int value) {
            controller.activeNavBar = value;
          }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            )
          ],
        ),
      ),
    );
  }

  Widget getPages(int activeNavbar) {
    final pages = [
      MyHomePage(index: activeNavbar),
      MyHomePage(index: activeNavbar),
      MyHomePage(index: activeNavbar)
    ];

    return pages[activeNavbar];
  }
}
