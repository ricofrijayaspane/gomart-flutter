import 'package:flutter/material.dart';
import 'package:gomart/widgets/cart_appbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CartAppbar(),
          ],
        ),
      ),
    );
  }
}
