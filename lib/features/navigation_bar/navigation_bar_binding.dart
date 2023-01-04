import 'package:get/get.dart';
import 'package:nontonin/features/navigation_bar/navigation_bar_controller.dart';

class NavigationBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBarController>(() => NavigationBarController());
  }
}
