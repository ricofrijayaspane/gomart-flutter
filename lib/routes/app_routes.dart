import 'package:get/get.dart';
import 'package:gomart/pages/cart_page.dart';
import 'package:gomart/pages/home_page.dart';
import 'package:gomart/pages/profil_page.dart';
import 'package:gomart/pages/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/home-page', page: () => HomePage()),
    GetPage(name: '/cart-page', page: () => CartPage()),
    GetPage(name: '/profil-page', page: () => ProfilPage()),
  ];
}
