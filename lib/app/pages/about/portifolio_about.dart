// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/widgets/my_outlined_button.dart';

import 'components/about_section.dart';
import 'components/about_text.dart';

class portfolioAbout extends StatelessWidget {
  const portfolioAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: context.percentHeight(.05),
          horizontal: context.percentWidth(.01)),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutMeTitle(),
          const AboutSection(),
          Center(
            child: MyOutlinedButton(
              onPressed: () => Get.toNamed('/pdf'),
              image: Image.asset('assets/images/download.png',
                  height: context.percentHeight(.035)),
              text: 'viewer_button'.tr,
            ),
          ),
        ],
      ),
    );
  }
}
