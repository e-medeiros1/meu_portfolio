import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

import 'glass_component.dart';
import 'my_dropdown_menu.dart';

class LogoAndBlurBox extends StatefulWidget {
  const LogoAndBlurBox({
    super.key,
  });

  @override
  State<LogoAndBlurBox> createState() => _LogoAndBlurBoxState();
}

class _LogoAndBlurBoxState extends State<LogoAndBlurBox> {
  final selectedValue = 'PT'.obs;
  @override
  Widget build(BuildContext context) {
    final listLanguage = ['PT', 'EN'];
    final isPortuguese = false.obs;
    final isEnglish = false.obs;

    return LayoutBuilder(
      builder: (_, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/personlogo.png',
                  color: context.colors.light,
                  fit: BoxFit.cover,
                  height: context.percentHeight(.17),
                ),
                MyDropdownMenu(
                    listLanguage: listLanguage,
                    selectedValue: selectedValue,
                    isPortuguese: isPortuguese,
                    isEnglish: isEnglish)
              ],
            ),
          ),
          const Spacer(),
          const GlassComponent(),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
