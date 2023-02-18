import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

import 'glass_component.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/mylogo.png',
              color: context.colors.light,
              fit: BoxFit.cover,
              height: context.percentHeight(.1),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.sunny, size: context.percentHeight(.05)),
              color: context.colors.light,
            )
          ],
        ),
        const Spacer(),
        const GlassComponent(),
        const Spacer(flex: 3)
      ],
    );
  }
}
