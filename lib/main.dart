import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomart/pages/detail_product.dart';
import 'package:gomart/pages/home_page.dart';
import 'package:gomart/pages/splash_screen.dart';
import 'package:gomart/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.routes,
    );
  }
}
