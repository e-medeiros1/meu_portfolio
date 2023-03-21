import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';

import 'about_me.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.012)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectionArea(
            child: AboutMeText(
              text:
                  'about1'.tr,
            ),
          ),
           SelectionArea(
             child: AboutMeText(
              text:
                  'about2'.tr,
                     ),
           ),
          SizedBox(height: context.percentHeight(.05)),
        ],
      ),
    );
  }
}
