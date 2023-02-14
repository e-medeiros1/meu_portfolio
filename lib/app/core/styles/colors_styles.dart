import 'package:flutter/material.dart';

class ColorsStyles {
  static ColorsStyles? _instance;

  ColorsStyles._();

  static ColorsStyles get instance {
    _instance ??= ColorsStyles._();
    return _instance!;
  }

  Color get dark => const Color(0xFF191919);
  Color get light => const Color(0xFFD9D9D9);
}

extension ColorsStylesExtensions on BuildContext {
  ColorsStyles get colors => ColorsStyles.instance;
}
