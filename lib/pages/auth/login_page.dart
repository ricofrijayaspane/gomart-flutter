import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomart/customs/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.snackbar('Success', 'Login successful',
          backgroundColor: Colors.green, colorText: Colors.white);
      Get.offNamed('/home-page');
    } catch (e) {
      Get.snackbar('Error', 'Login failed: ${e.toString()}',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: AppColors.background,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),

                // Email Field
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: AppColors.background),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.email, color: AppColors.background),
                  ),
                  style: TextStyle(color: AppColors.background),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),

                // Password Field
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: AppColors.background),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.lock, color: AppColors.background),
                    suffixIcon:
                        Icon(Icons.visibility, color: AppColors.background),
                  ),
                  style: TextStyle(color: AppColors.background),
                  obscureText: true,
                ),
                SizedBox(height: 40),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.background,
                      foregroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: login,
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Register Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: AppColors.background),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/register-page');
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
