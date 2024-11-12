import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_app/model/product.dart';
import 'package:grocery_app/repositories/product_repository.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int productId;
  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  Product? product;
  ProductRepository _repo = ProductRepository();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _repo.getProductById(widget.productId).then((value) {
      setState(() {
        product = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Column(
          children: [
            const Text('Product Details'),
            if (product == null) const CircularProgressIndicator(),
            if (product != null)
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(product!.image),
                    const Divider(),
                    Text(product!.title),
                    Text(product!.description),
                    Text(
                      product!.price.toString(),
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
          ],
        ));
  }
}
