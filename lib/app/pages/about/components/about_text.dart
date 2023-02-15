import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Sobre mim',
          textAlign: TextAlign.center,
          style: context.textStyles.textExtraBold
              .copyWith(color: context.colors.light, fontSize: 50),
        ),
        SizedBox(height: context.percentHeight(.025)),
        Image.asset(
          'assets/images/oldComputer.gif',
          fit: BoxFit.scaleDown,
          height: context.percentHeight(.45),
        )
      ],
    );
  }
}
