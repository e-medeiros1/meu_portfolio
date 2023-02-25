import 'package:flutter/material.dart';

class ColorsStyles {
  static ColorsStyles? _instance;
  final _darkTheme = const Color(0xFF191919);
  final _lightTheme = const Color(0xFFD9D9D9);

  ColorsStyles._();

  static ColorsStyles get instance {
    _instance ??= ColorsStyles._();
    return _instance!;
  }

  Color get dark => _darkTheme;
  Color get light => _lightTheme;
}

extension ColorsStylesExtensions on BuildContext {
  ColorsStyles get colors => ColorsStyles.instance;
}
