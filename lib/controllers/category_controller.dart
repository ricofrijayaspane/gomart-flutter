import 'package:get/get.dart';
import '../models/category_model.dart';

class CategoryController extends GetxController {
  //Daftar Kategori
  final categories = <Category>[
    Category(name: "Men's Clothing", image: "assets/images/mens-clothing.jpg"),
    Category(name: "Jewelery", image: "assets/images/jewelery.jpg"),
    Category(name: "Electronics", image: "assets/images/electronics.jpg"),
    Category(
        name: "Women's Clothing", image: "assets/images/womens-clothing.jpg"),
    // Category(name: "Kaos", image: "assets/images/categories-5.png"),
    // Category(name: "Celana", image: "assets/images/categories-6.png"),
    // Category(name: "Gelang", image: "assets/images/categories-7.png"),
  ].obs;

  //Kategori Terpilih
  var selectedCategory = "".obs;

  //Memilih Kategori
  void selectCategory(String categoryName) {
    selectedCategory.value = categoryName;
  }
}
