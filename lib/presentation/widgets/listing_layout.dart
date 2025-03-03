import 'package:flutter/material.dart';
import 'package:ecommerceapp_assignment3/data/product_model.dart';
import 'package:ecommerceapp_assignment3/data/product_repository.dart';
import 'listing_card.dart';

class ListingLayout extends StatelessWidget {
  const ListingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: ProductRepository().getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No products found'));
        } else {
          final products = snapshot.data;
          return GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 4,
              childAspectRatio: 0.7,
            ),
            itemCount: products!.length,
            itemBuilder: (context, index) {
              return ListingCard(product: products[index]);
            },
          );
        }
      },
    );
  }
}
