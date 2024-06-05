import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

class AboutMeTitle extends StatelessWidget {
  const AboutMeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'about_title'.tr,
      style: context.textStyles.textRegular.copyWith(color: context.colors.light, fontSize: 50),
    );
  }
}
