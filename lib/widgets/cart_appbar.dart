import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/controllers/home_controller.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

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
              if (controller.selectedIndex.value == 1) {
                controller.changePage(0);
              } else {
                Get.back();
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
              'Cart',
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
