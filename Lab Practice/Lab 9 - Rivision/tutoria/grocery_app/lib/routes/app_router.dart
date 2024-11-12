import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grocery_app/screens/product_details_screen.dart';
import 'package:grocery_app/screens/product_screen.dart';

class AppRouter {
  // Define the route names/path
  static const productsRoute = (name: 'products', path: '/');
  static const productDetailsRoute =
      (name: 'product_details', path: '/products_details/:id');

  // Define the routes
  final router = GoRouter(initialLocation: productsRoute.path, routes: [
    ShellRoute(
        builder: (context, state, child) =>
            Scaffold(body: SafeArea(child: child)),
        routes: [
          // Products route
          GoRoute(
              name: productsRoute.name,
              path: productsRoute.path,
              builder: (context, state) => const ProductScreen(),
              routes: [
                // Product details route
                GoRoute(
                  name: productDetailsRoute.name,
                  path: productDetailsRoute.path,
                  builder: (context, state) {
                    final productId = state.pathParameters['id']!;
                    return ProductDetailsScreen(
                        productId: int.parse(productId));
                  },
                )
              ])
        ])
  ]);
}
