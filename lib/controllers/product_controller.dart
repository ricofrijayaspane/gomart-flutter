import 'package:get/get.dart';
import 'package:gomart/models/product_model.dart';
import 'package:gomart/services/product_service.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading.value = true;
    try {
      products.value = await ProductService().fetchUser();
    } finally {
      isLoading.value = false;
    }
  }
}
