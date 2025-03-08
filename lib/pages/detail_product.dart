import 'package:flutter/material.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/widgets/detail_product_appbar.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          DetailProductAppbar(),
        ],
      ),
    );
  }
}
