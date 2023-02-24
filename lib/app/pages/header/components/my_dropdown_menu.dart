import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class MyDropdownMenu extends StatelessWidget {
  const MyDropdownMenu({
    super.key,
    required this.listLanguage,
    required this.selectedValue,
    required this.isPortuguese,
    required this.isEnglish,
  });

  final List<String> listLanguage;
  final RxString selectedValue;
  final RxBool isPortuguese;
  final RxBool isEnglish;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: context.colors.light)),
      child: Obx(() => DropdownButtonHideUnderline(
            child: DropdownButton(
              elevation: 0,
              focusColor: Colors.transparent,
              dropdownColor: context.colors.dark,
              borderRadius: BorderRadius.circular(12),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: context.colors.light
              ),
              items: listLanguage
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e,
                        style: context.textStyles.textExtraBold.copyWith(
                          fontSize: 18,
                          color: context.colors.light,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                selectedValue.value = value ?? '';
                switch (selectedValue.value) {
                  case 'PT':
                    isPortuguese.value = true;
                    if (isPortuguese.value == true) {
                      isEnglish.value = false;
                      Get.updateLocale(const Locale('pt', 'BR'));
                    }
                    break;
                  case 'EN':
                    isEnglish.value = true;
                    if (isEnglish.value == true) {
                      isPortuguese.value = false;
                      Get.updateLocale(const Locale('en', 'US'));
                    }
                    break;
                }
              },
              value: selectedValue.value,
            ),
          )),
    );
  }
}
