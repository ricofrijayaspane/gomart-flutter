import 'package:flutter/material.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:gomart/widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppbar(),
        ],
      ),
    );
  }
}
