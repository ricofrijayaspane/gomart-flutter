import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/controllers/home_controller.dart';

class ProfilAppbar extends StatelessWidget {
  const ProfilAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // Jika halaman Profil diakses dari BottomNavbar, kembali ke HomePage
              if (controller.selectedIndex.value == 2) {
                controller.changePage(0); // Kembali ke home
              } else {
                Get.back(); // Jika masuk lewat AppBar, kembali ke halaman sebelumnya
              }
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: AppColors.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Profile',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
