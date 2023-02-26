import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/social_media_row.dart';

class GlassComponent extends StatelessWidget {
  const GlassComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage('assets/images/profile.png'),
                opacity: .85),
            color: context.colors.light.withOpacity(0.05),
          ),
          padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.05)),
          constraints: BoxConstraints(
            maxWidth: 1110,
            maxHeight: context.percentHeight(.7),
          ),
          width: context.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Erilândio \nSantos',
                style: context.textStyles.textExtraBold.copyWith(
                    fontSize: 80,
                    color: context.colors.light,
                    letterSpacing: -.5),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(
                    'pre_position'.tr,
                    softWrap: true,
                    style: context.textStyles.textRegular.copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 53,
                      color: context.colors.light,
                    ),
                  ),
                  const SizedBox(width: 10),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        'position'.tr,
                        textStyle: context.textStyles.textRegular.copyWith(
                          fontSize: 53,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: context.colors.light,
                        ),
                      ),
                      TyperAnimatedText(
                        'position1'.tr,
                        textStyle: context.textStyles.textRegular.copyWith(
                          fontSize: 53,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: context.colors.light,
                        ),
                      ),
                      TyperAnimatedText(
                        'position2'.tr,
                        textStyle: context.textStyles.textRegular.copyWith(
                          fontSize: 53,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: context.colors.light,
                        ),
                      ),
                      TyperAnimatedText(
                        'position3'.tr,
                        textStyle: context.textStyles.textRegular.copyWith(
                          fontSize: 53,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: context.colors.light,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const SocialMediaRow(),
            ],
          ),
        ),
      ),
    );
  }
}
