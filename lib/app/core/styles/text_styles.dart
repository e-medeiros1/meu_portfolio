import 'package:flutter/cupertino.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'FamiljenGrotesk';

  TextStyle get textRegular => const TextStyle(fontWeight: FontWeight.normal);

  TextStyle get textButtonLabel => textRegular.copyWith(fontSize: 14);
  TextStyle get textTitle => textRegular.copyWith(fontSize: 26);
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
