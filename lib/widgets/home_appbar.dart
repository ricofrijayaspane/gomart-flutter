import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:gomart/pages/cart_page.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: AppColors.primary,
          ),
          SizedBox(width: 20),
          Text(
            'GoMart',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                );
              },
              child: Icon(
                CupertinoIcons.cart_fill,
                size: 32,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
