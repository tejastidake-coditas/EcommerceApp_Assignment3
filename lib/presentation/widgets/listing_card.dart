import 'package:ecommerceapp_assignment3/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp_assignment3/data/product_model.dart';
import 'package:ecommerceapp_assignment3/presentation/screens/product_detail_screen.dart';

class ListingCard extends StatelessWidget {
  final Product product;

  const ListingCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'product_image_${product.id}',
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: product.backgroundColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(product.name, style: TextStyle()),
          const SizedBox(height: 4),
          Text("\$${product.price}", style: AppTextStyles.blackHeading2),
        ],
      ),
    );
  }
}

// add color style and text style to constants like in listing page the title text and in product details page subtitle & price text has same style size, etc just color is different
