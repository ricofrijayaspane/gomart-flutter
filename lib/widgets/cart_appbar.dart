import 'package:flutter/material.dart';
import 'package:gomart/customs/app_colors.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
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
