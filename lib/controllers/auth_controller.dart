import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final RxBool isLoading = false.obs;

  void register(String email, String password, String confirmPassword) async {
    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      showSnackbar("Error", "All fields are required!", Colors.redAccent);
      return;
    }

    if (password != confirmPassword) {
      showSnackbar("Error", "Passwords do not match!", Colors.redAccent);
      return;
    }

    isLoading.value = true;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      showSnackbar("Success", "Registration successful!", Colors.green);
      await Future.delayed(const Duration(seconds: 2));
      Get.offNamed('/login-page');
    } catch (e) {
      showSnackbar("Error", e.toString(), Colors.redAccent);
    } finally {
      isLoading.value = false;
    }
  }

  void showSnackbar(String title, String message, Color color) {
    Get.dialog(
      AlertDialog(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text(title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
        content: Text(message, style: const TextStyle(color: Colors.white)),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text("OK", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
