import 'package:flutter/material.dart';

class Utils {
  static const double _mockWidth = 375;
  static const double _mockHeight = 812;

  static textScale({required BuildContext context}) {
    final screenSize = MediaQuery.of(context).size;

    final textScale = screenSize.width / _mockWidth;
    return textScale;
  }

  static scaledHeight({required BuildContext context, required double val}) {
    final screenSize = MediaQuery.of(context).size;

    return val / _mockHeight * screenSize.height;
  }

  static scaledWidth({required BuildContext context, required double val}) {
    final screenSize = MediaQuery.of(context).size;

    return val / _mockWidth * screenSize.width;
  }
}
