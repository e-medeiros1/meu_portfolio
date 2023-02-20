import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    super.key,
    required this.colorLight,
  });

  final Color colorLight;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: context.textStyles.textRegular
          .copyWith(color: colorLight, fontSize: 19),
      const TextSpan(
        children: [
          TextSpan(text: 'Feito com Flutter por '),
          TextSpan(
              text: '@erimedeiros',
              style: TextStyle(decoration: TextDecoration.underline)),
        ],
      ),
    );
  }
}
