import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/pages/header/components/menu_component.dart';

import 'components/glass_component.dart';

class PortifolioHeader extends StatelessWidget {
  const PortifolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: context.screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
            opacity: .1,
            image: AssetImage('assets/images/tapping.gif'),
            fit: BoxFit.cover),
      ),
      child: Container(
        margin: EdgeInsets.only(top: context.percentHeight(.05)),
        width: 1110,
        child: Stack(
          children: const [
            LogoAndBlurBox(),
            Positioned(
              bottom: 0,
              child: MenuComponent(),
            )
          ],
        ),
      ),
    );
  }
}

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
            FadeInImage.assetNetwork(
              image: 'assets/images/mylogo.png',
              placeholder: 'assets/images/transparent.png',
              placeholderFit: BoxFit.cover,
              fit: BoxFit.cover,
              height: context.percentHeight(.1),
            ),
            const Spacer(),
            Icon(
              Icons.sunny,
              color: context.colors.light,
              size: context.percentHeight(.05),
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
