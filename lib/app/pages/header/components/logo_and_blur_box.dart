import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

import 'glass_component.dart';
import 'menu_component.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/mylogo.png',
                color: context.colors.light,
                fit: BoxFit.cover,
                height: context.percentHeight(.1),
              ),
              const Spacer(),
              if (constraints.maxWidth > 700) const MenuComponent(),
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
          const Spacer(flex: 3),
          if (constraints.maxWidth < 700)
            Padding(
              padding: EdgeInsets.only(bottom: context.percentHeight(.07)),
              child: const MenuComponent(),
            ),
        ],
      ),
    );
  }
}
