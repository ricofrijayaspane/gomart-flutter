import 'package:flutter/material.dart';
import 'package:gomart/widgets/profil_appbar.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ProfilAppbar(),
          ],
        ),
      ),
    );
  }
}
