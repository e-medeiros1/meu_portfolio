import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class AboutMeText extends StatelessWidget {
  final String text;
  const AboutMeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: context.percentWidth(.03), top: 20),
      child: Text(
        softWrap: true,
        text,
        textAlign: TextAlign.left,
        overflow: TextOverflow.fade,
        style: context.textStyles.textRegular
            .copyWith(color: context.colors.light, height: 2, fontSize: 18),
      ),
    );
  }
}
