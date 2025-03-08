import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/widgets/category_widget.dart';
import 'package:gomart/widgets/home_appbar.dart';
import 'package:gomart/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
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
                              width: 290,
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
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                      Container(
                        alignment: Alignment.centerLeft,
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          'Best Selling',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      ProductWidget(), // Pastikan `ProductWidget` menggunakan shrinkWrap:true
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        color: AppColors.primary,
        height: 70,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person_2,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
