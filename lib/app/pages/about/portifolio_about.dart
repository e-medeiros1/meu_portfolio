// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/widgets/my_outlined_button.dart';

import 'components/about_section.dart';
import 'components/about_text.dart';

class PortifolioAbout extends StatelessWidget {
  const PortifolioAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.percentHeight(.1)),
      margin: EdgeInsets.symmetric(horizontal: context.percentWidth(.05)),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutMeTitle(),
          const AboutSection(),
          Center(
            child: MyOutlinedButton(
              color: context.colors.light,
              onPressed: () {},
              imageSrc: 'assets/images/download.png',
              text: 'Baixar currículo',
            ),
          ),
          SizedBox(height: context.percentHeight(.1)),
        ],
      ),
    );
  }
}
