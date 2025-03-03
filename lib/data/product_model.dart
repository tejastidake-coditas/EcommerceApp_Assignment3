import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String subtitle;
  final String description;
  final int price;
  final Color backgroundColor;
  final String imageUrl;
  bool isFavorite;
  final int size;

  Product({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.backgroundColor,
    required this.imageUrl,
    this.isFavorite = false,
    required this.size,
  });
}
