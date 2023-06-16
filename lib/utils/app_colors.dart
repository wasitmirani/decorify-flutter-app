import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF0058A0);
  static const Color secondaryColor = Color(0xFFE57373);
  static const Color accentColor = Color(0xFF9C27B0);
  static const Color textColor = Color(0xFF333333);
  // Add more colors as needed

  // Example method to generate a shade of a color
  static Color generateShade(Color baseColor, double opacity) {
    return baseColor.withOpacity(opacity);
  }
}
