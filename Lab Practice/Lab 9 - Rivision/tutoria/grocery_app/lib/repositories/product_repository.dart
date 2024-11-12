import 'package:dio/dio.dart';
import 'package:grocery_app/model/product.dart';

class ProductRepository {
  // two methods to get products
  final _dio = Dio();

  Future<List<Product>> getProducts() async {
    Response response = await _dio.get('https://dummyjson.com/products');

    if (response.statusCode == 200) {
      List<Product> products = [];

      for (var map in response.data["products"]) {
        products.add(Product.fromJson(map));
      }
      //print
      // print('---------Works---------');
      // print(products);
      return products;
    }
    return throw Exception('Failed to load products');
  }

  Future<Product> getProductById(int id) async {
    Response response = await _dio.get('https://dummyjson.com/products/$id');

    if (response.statusCode == 200) {
      var product = Product.fromJson(response.data);
      // print('---------Works---------');
      // print(product);
      return product;
    }

    return throw Exception('Failed to load product');
  }
}
