import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_app/providers/product_provider.dart';

class ProductScreen extends ConsumerStatefulWidget {
  const ProductScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    var products = ref.watch(productNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.push('/products_details/${products[index].id}');
            },
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: Image.network(products[index].image),
                title: Text(products[index].title),
                subtitle: Text(products[index].description),
                trailing: Text(products[index].price.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
