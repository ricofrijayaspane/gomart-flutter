import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[
    {"title": "Product 1", "price": 20, "quantity": 1},
    {"title": "Product 2", "price": 30, "quantity": 1},
    {"title": "Product 3", "price": 40, "quantity": 1},
  ].obs;

  void incrementQuantity(int index) {
    cartItems[index]["quantity"]++;
    cartItems.refresh(); // Memperbarui UI
  }

  void decrementQuantity(int index) {
    if (cartItems[index]["quantity"] > 1) {
      cartItems[index]["quantity"]--;
      cartItems.refresh();
    }
  }

}
