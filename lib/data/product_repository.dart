import 'package:ecommerceapp_assignment3/data/product_model.dart';
import 'package:flutter/material.dart';

class ProductRepository {
  Future<List<Product>> getProducts() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      Product(
          id: 101,
          name: 'Office Code',
          subtitle: 'Casual bag',
          description:
              'The industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          price: 234,
          backgroundColor: Colors.blueGrey,
          imageUrl:
              'https://cdn.pixabay.com/photo/2014/04/02/10/14/handbag-303217_1280.png',
          size: 12),
      Product(
        id: 102,
        name: 'Belt Bag',
        subtitle: 'Regular Official code',
        description:
            'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        price: 226,
        backgroundColor: const Color(0xFF3B5998),
        imageUrl:
            'https://cdn.pixabay.com/photo/2018/04/01/18/16/bag-3281639_1280.png',
        size: 12,
      ),
      Product(
        id: 103,
        name: 'Hang Top',
        subtitle: 'Regular Official code',
        description:
            'Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        price: 185,
        backgroundColor: Colors.pink,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/09/16/17/49/handbag-1674674_1280.png',
        size: 12,
      ),
      Product(
        id: 104,
        name: 'Old Fashion',
        subtitle: 'Casual bag',
        description:
            'Casual handbag, great for day-to-day. Lorem Ipsum dummy text when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
        price: 211,
        backgroundColor: Colors.deepOrangeAccent,
        imageUrl:
            'https://cdn.pixabay.com/photo/2013/07/12/17/39/handbag-152158_1280.png',
        size: 10,
      ),
      Product(
        id: 105,
        name: 'Shiny Blue',
        subtitle: 'Casual bag',
        description:
            'A stylish belt bag perfect for daily use. Lorem Ipsum dummy text. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        price: 200,
        backgroundColor: Colors.purpleAccent,
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/04/02/10/14/handbag-303215_1280.png',
        size: 12,
      ),
      Product(
        id: 106,
        name: 'Casual',
        subtitle: 'Regular Official code',
        description:
            'Perfect for office use, holds all your essentials. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        price: 224,
        backgroundColor: Colors.blueGrey,
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/04/03/00/37/purse-308879_1280.png',
        size: 12,
      ),
      Product(
        id: 107,
        name: 'Professional',
        subtitle: 'Regular Official code',
        description:
            'The red variant of our Office Code series. Lorem Ipsum dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
        price: 234,
        backgroundColor: Colors.redAccent,
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/04/03/11/37/tote-311997_1280.png',
        size: 12,
      ),
      Product(
        id: 108,
        name: 'Gen-z',
        subtitle: 'Casual bag',
        description:
            'Casual handbag, great for day-to-day. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        price: 200,
        backgroundColor: Colors.grey.shade400,
        imageUrl:
            'https://cdn.pixabay.com/photo/2012/04/14/16/32/handbag-34519_1280.png',
        size: 10,
      ),
    ];
  }
}
