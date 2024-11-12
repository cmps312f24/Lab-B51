import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery_app/model/product.dart';
import 'package:grocery_app/repositories/product_repository.dart';

class ProductNotifier extends Notifier<List<Product>> {
  final _repo = ProductRepository();
  @override
  List<Product> build() {
    initializeProducts();
    return [];
  }

  void initializeProducts() {
    try {
      // state = await _repo.getProducts();
      _repo.getProducts().then((value) => {state = value});
    } catch (e) {
      print(e);
      state = [];
    }
  }
}

final productNotifierProvider =
    NotifierProvider<ProductNotifier, List<Product>>(() => ProductNotifier());
