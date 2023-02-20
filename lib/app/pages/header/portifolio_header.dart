import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';

import 'components/logo_and_blur_box.dart';

class PortifolioHeader extends StatelessWidget {
  const PortifolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
        width: context.screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: .3,
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: context.percentHeight(.05)),
          width: 1110,
          child: Stack(
            children: const [
              LogoAndBlurBox(),
            ],
          ),
        ),
      ),
    );
  }
}
