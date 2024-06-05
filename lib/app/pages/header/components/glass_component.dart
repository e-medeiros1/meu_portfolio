import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/social_media_row.dart';
import 'position_text_animation.dart';

class GlassComponent extends StatelessWidget {
  const GlassComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                image:
                    const DecorationImage(alignment: Alignment.bottomRight, image: AssetImage('assets/images/profile.png'), opacity: .65),
                color: context.colors.light.withOpacity(0.05),
              ),
              padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.05)),
              constraints: BoxConstraints(
                maxWidth: context.width,
                maxHeight: context.percentHeight(.80),
              ),
              width: context.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text('Erilândio \nSantos',
                      style: context.textStyles.textRegular
                          .copyWith(fontSize: context.percentHeight(.085), color: context.colors.light, letterSpacing: -.5)),
                  Text('office'.tr,
                      style: context.textStyles.textRegular.copyWith(
                        fontSize: context.percentHeight(.055),
                        color: context.colors.light,
                      )),
                  const PositionTextAnimation(),
                  const Spacer(),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 3, top: context.percentHeight(.12), bottom: context.percentHeight(.04)),
                      child: const SocialMediaRow(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
