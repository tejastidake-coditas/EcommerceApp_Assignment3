import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const TextStyle category = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static const TextStyle tabLabel = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.primary,
  );

  static const TextStyle tabUnselected = TextStyle(
    color: AppColors.secondary,
  );

  static const TextStyle heading1 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 14,
    color: AppColors.accent,
  );

  static const TextStyle blackHeading1 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.w800);

  static const TextStyle blackHeading2 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
}
