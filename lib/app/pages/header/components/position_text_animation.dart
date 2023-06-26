import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

class PositionTextAnimation extends StatelessWidget {
  const PositionTextAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle myStyle = context.textStyles.textRegular.copyWith(
      fontSize: context.percentHeight(.06),
      fontWeight: FontWeight.bold,
      color: context.colors.light,
    );
    return Expanded(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          FittedBox(
            child: Text(
              'pre_position'.tr,
              style: context.textStyles.textRegular.copyWith(
                fontSize: context.percentHeight(.06),
                color: context.colors.light,
              ),
            ),
          ),
          const SizedBox(width: 10),
          AnimatedTextKit(
            totalRepeatCount: 10,
            animatedTexts: [
              TyperAnimatedText('position'.tr, textStyle: myStyle),
              TyperAnimatedText('position1'.tr, textStyle: myStyle),
              TyperAnimatedText('position2'.tr, textStyle: myStyle),
              TyperAnimatedText('position3'.tr, textStyle: myStyle),
            ],
          ),
        ],
      ),
    );
  }
}
