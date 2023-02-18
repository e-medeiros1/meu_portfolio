import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class AboutMeTitle extends StatelessWidget {
  const AboutMeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sobre mim',
      style: context.textStyles.textExtraBold
          .copyWith(color: context.colors.light, fontSize: 50),
    );
  }
}
