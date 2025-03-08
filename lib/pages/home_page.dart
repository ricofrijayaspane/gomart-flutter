import 'package:flutter/material.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/widgets/category_widget.dart';
import 'package:gomart/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppbar(),
          Container(
            height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 50,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search here...',
                              border: InputBorder.none),
                        ),
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                CategoryWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
