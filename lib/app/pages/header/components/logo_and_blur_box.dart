import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

import 'glass_component.dart';
import 'my_menu.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/personlogo.png',
                  color: context.colors.light,
                  fit: BoxFit.cover,
                  height: context.percentHeight(.15),
                ),
                const Spacer(),
                if (constraints.maxWidth > 700)
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: MyMenu(),
                  ),
                const SizedBox(width: 50),
                IconButton(
                  //Set theme here
                  onPressed: () {},
                  icon: Icon(Icons.sunny, size: context.percentHeight(.05)),
                  color: context.colors.light,
                )
              ],
            ),
          ),
          const Spacer(),
          if (constraints.maxWidth < 700)
            Padding(
              padding: EdgeInsets.only(bottom: context.percentHeight(.07)),
              child: const MyMenu(),
            ),
          const GlassComponent(),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
