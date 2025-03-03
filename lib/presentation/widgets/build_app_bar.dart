import 'package:flutter/material.dart';

AppBar buildAppBar(
    Color iconColor, Color backgroundColor, BuildContext context) {
  return AppBar(
    backgroundColor: backgroundColor,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_sharp),
      iconSize: 25,
      color: iconColor,
      onPressed: () {
        (Navigator.canPop(context))
            ? Navigator.pop(context)
            : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text("No previous page")));
      },
    ),
    actions: [
      Icon(Icons.search, size: 30, color: iconColor),
      SizedBox(width: 15),
      Icon(Icons.shopping_cart_outlined, size: 25, color: iconColor),
      SizedBox(width: 15),
    ],
  );
}
