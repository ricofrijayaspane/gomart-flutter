import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomart/customs/app_colors.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/foto.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Rico Frijaya S. Pane',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'ricopane1009@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.phone, color: AppColors.primary),
                title: Text(
                  '+62 812-3456-7890',
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: AppColors.primary),
                title: Text(
                  'Jl. Palagan, Sleman, Yogyakarta',
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed('/get-started-page');
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
