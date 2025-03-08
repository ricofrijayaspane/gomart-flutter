import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/controllers/category_controller.dart';
import 'package:gomart/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  final CategoryController categoryController = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categoryController.categories.map((Category category) {
            bool isSelected =
                categoryController.selectedCategory.value == category.name;
            return GestureDetector(
              onTap: () => categoryController.selectCategory(category.name),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: isSelected ? AppColors.primary : Colors.grey),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(category.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      category.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: isSelected ? Colors.white : AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      );
    });
  }
}
