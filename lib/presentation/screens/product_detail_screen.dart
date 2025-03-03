import 'package:ecommerceapp_assignment3/core/constants/text_styles.dart';
import 'package:ecommerceapp_assignment3/presentation/widgets/build_app_bar.dart';
import 'package:ecommerceapp_assignment3/presentation/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp_assignment3/data/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _quantity = 1;
  bool _isFavorite = false;
  int _selectedColorIndex = 0;

  final List<Color> _colorOptions = [
    Colors.blue,
    Colors.brown,
    Colors.redAccent,
  ];

  void _incrementQuantity() {
    setState(() => _quantity++);
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) _quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: product.backgroundColor,
      appBar: buildAppBar(Colors.white, product.backgroundColor, context),

      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.35,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(product.subtitle, style: AppTextStyles.heading2),
                    Text(
                      product.name,
                      style: AppTextStyles.heading1,
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Price", style: AppTextStyles.heading2),
                        Text("\$${product.price}",
                            style: AppTextStyles.heading1),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 92, 16, 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Color", style: AppTextStyles.blackHeading2),
                              const SizedBox(height: 8),
                              Row(
                                children: List.generate(_colorOptions.length,
                                    (index) {
                                  final color = _colorOptions[index];
                                  final bool isSelected =
                                      _selectedColorIndex == index;

                                  return GestureDetector(
                                    onTap: () => setState(
                                        () => _selectedColorIndex = index),
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: isSelected
                                            ? Border.all(color: color, width: 2)
                                            : Border.all(
                                                color: Colors.transparent),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 22,
                                          height: 22,
                                          decoration: BoxDecoration(
                                            color: color,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Size",
                                      style: AppTextStyles.blackHeading2),
                                  Text(
                                    '${product.size} cm',
                                    style: AppTextStyles.blackHeading1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        product.description,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black87),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              _buildQuantityButton(
                                  Icons.remove, _decrementQuantity),
                              Text(
                                _quantity.toString().padLeft(2, '0'),
                                style: AppTextStyles.blackHeading2,
                              ),
                              _buildQuantityButton(
                                  Icons.add, _incrementQuantity),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              _isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: _isFavorite ? Colors.red : Colors.grey,
                              size: 28,
                            ),
                            onPressed: () =>
                                setState(() => _isFavorite = !_isFavorite),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              snackBar(context, "Added to Cart");
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: product.backgroundColor),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 20),
                            ),
                            child: Icon(Icons.add_shopping_cart_rounded,
                                color: product.backgroundColor),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                snackBar(context, "Proceeding to Checkout");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: product.backgroundColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                              ),
                              child: const Text("BUY NOW",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            top: size.height * 0.15,
            right: 16,
            child: Hero(
              tag: 'product_image_${product.id}',
              child: Image.network(
                product.imageUrl,
                width: 260,
                height: 260,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 40,
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Center(
          child: Icon(icon, size: 18),
        ),
      ),
    );
  }
}
