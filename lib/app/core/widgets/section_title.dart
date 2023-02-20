import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: context.percentWidth(.01)),
        // margin: EdgeInsets.symmetric(vertical: context.percentHeight(.025)),
        constraints: const BoxConstraints(maxWidth: 1110),
        height: 100,
        child: Text(
          title,
          style: context.textStyles.textExtraBold
              .copyWith(fontSize: 50, color: context.colors.light),
        ));
  }
}
