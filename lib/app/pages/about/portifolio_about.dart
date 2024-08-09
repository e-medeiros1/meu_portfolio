// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/widgets/my_outlined_button.dart';

import 'components/about_section.dart';
import 'components/about_text.dart';

class PortfolioAbout extends StatelessWidget {
  const PortfolioAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.percentWidth(.9),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: context.percentHeight(.05), horizontal: context.percentWidth(.01)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AboutMeTitle(),
            const AboutSection(),
            SizedBox(height: context.percentHeight(.04)),
            Center(
              child: MyOutlinedButton(
                onPressed: () => Get.toNamed('/pdf'),
                image: Image.asset('assets/images/download.png',
                    height: context.percentHeight(.025)),
                text: 'viewer_button'.tr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
