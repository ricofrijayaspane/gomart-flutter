import 'package:get/get.dart';
import 'package:gomart/pages/cart_page.dart';
import 'package:gomart/pages/get_started_page.dart';
import 'package:gomart/pages/home_page.dart';
import 'package:gomart/pages/auth/login_page.dart';
import 'package:gomart/pages/profil_page.dart';
import 'package:gomart/pages/auth/register_page.dart';
import 'package:gomart/pages/splash_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/home-page', page: () => HomePage()),
    GetPage(name: '/cart-page', page: () => CartPage()),
    GetPage(name: '/profil-page', page: () => ProfilPage()),
    GetPage(name: '/get-started-page', page: () => GetStartedPage()),
    GetPage(name: '/login-page', page: () => LoginPage()),
    GetPage(name: '/register-page', page: () => RegisterPage()),
  ];
}
