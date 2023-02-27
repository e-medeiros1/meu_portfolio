import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/social_media_row.dart';
import 'position_text_animation.dart';

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
                opacity: .75),
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
              const Spacer(),
              Text('Erilândio \nSantos',
                  style: context.textStyles.textExtraBold.copyWith(
                      fontSize: 80,
                      color: context.colors.light,
                      letterSpacing: -.5)),
              const PositionTextAnimation(),
              const Spacer(),
              const SocialMediaRow(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
