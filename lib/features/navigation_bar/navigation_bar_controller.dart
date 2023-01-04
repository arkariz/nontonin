import 'package:get/get.dart';

class NavigationBarController extends GetxController {

  final _activeNavBar = 0.obs;

  set activeNavBar(int value) => _activeNavBar.value = value;
  int get activeNavBar => _activeNavBar.value;
}