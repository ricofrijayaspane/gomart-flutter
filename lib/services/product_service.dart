import 'package:dio/dio.dart';
import 'package:gomart/data/providers/api_end_point.dart';
import 'package:gomart/models/product_model.dart';

class ProductService {
  Dio dio = Dio();

  Future<List<ProductModel>> fetchUser() async {
    try {
      final response = await dio.get(ApiEndPoint.url + ApiEndPoint.product);

      if (response.statusCode == 200 || response.statusCode == 201) {
        List<ProductModel> products = List<ProductModel>.from(
          response.data.map((item) => ProductModel.fromJson(item)),
        );
        return products;
      }
      throw Exception('Failed to load products');
    } catch (e) {
      rethrow;
    }
  }
}
