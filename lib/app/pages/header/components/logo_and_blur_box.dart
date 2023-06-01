import 'package:flutter/material.dart';

import 'glass_component.dart';

class LogoAndBlurBox extends StatefulWidget {
  const LogoAndBlurBox({
    super.key,
  });

  @override
  State<LogoAndBlurBox> createState() => _LogoAndBlurBoxState();
}

class _LogoAndBlurBoxState extends State<LogoAndBlurBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        GlassComponent(),
      ],
    );
  }
}
