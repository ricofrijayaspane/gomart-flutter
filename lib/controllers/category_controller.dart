import 'package:get/get.dart';
import '../models/category_model.dart';

class CategoryController extends GetxController {
  //Daftar Kategori
  final categories = <Category>[
    Category(name: "Sandal", image: "assets/images/categories-1.png"),
    Category(name: "Jam", image: "assets/images/categories-2.png"),
    Category(name: "Tas", image: "assets/images/categories-3.png"),
    Category(name: "Kemeja", image: "assets/images/categories-4.png"),
    Category(name: "Kaos", image: "assets/images/categories-5.png"),
    Category(name: "Celana", image: "assets/images/categories-6.png"),
    Category(name: "Gelang", image: "assets/images/categories-7.png"),
  ].obs;

  //Kategori Terpilih
  var selectedCategory = "".obs;

  //Memilih Kategori
  void selectCategory(String categoryName) {
    selectedCategory.value = categoryName;
  }
}
