import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs; // Index halaman aktif

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
