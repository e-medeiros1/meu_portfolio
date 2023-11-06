import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';

import 'components/logo_and_blur_box.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 800, minHeight: 700),
      width: context.screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: .3,
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const SizedBox(
        // margin: EdgeInsets.only(top: context.percentHeight(.05)),
        width: 1110,
        child: Stack(
          children: [
            LogoAndBlurBox(),
          ],
        ),
      ),
    );
  }
}
