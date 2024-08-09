import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'about_me.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AboutMeText(
            text: 'about1'.tr,
          ),
          AboutMeText(
            text: 'about2'.tr,
          ),
        ],
      ),
    );
  }
}
