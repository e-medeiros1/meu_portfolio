// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/widgets/my_outlined_button.dart';

import '../../core/widgets/social_media_row.dart';

class PortfolioFooter extends StatelessWidget {
  final ScrollController controller;
  const PortfolioFooter({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorLight = context.colors.light;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: context.percentHeight(.05)),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(color: colorLight.withOpacity(.6), height: 6),
            const SizedBox(height: 20),
            SizedBox(
                width: 1110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyOutlinedButton(
                        onPressed: () {
                          controller.animateTo(0.0,
                              duration: const Duration(seconds: 2),
                              curve: Curves.fastLinearToSlowEaseIn);
                        },
                        image: Icon(
                          Icons.keyboard_arrow_up,
                          size: context.percentHeight(.04),
                          color: context.colors.light,
                        ),
                        text: 'bottom_button'.tr),
                    const Spacer(),
                    const SocialMediaRow(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
