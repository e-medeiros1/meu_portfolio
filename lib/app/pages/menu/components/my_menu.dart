import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../header/components/menu_component.dart';

class MyMenu extends StatelessWidget {
  final ValueChanged<int> onMenuPressed;
  const MyMenu({
    super.key,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuItem(
              buttonName: 'menu_home'.tr, onPressed: () => onMenuPressed(1)),
          MenuItem(
              buttonName: 'menu_about'.tr, onPressed: () => onMenuPressed(2)),
          MenuItem(
              buttonName: 'menu_stacks'.tr,
              onPressed: () => onMenuPressed(3)),
          MenuItem(
              buttonName: 'menu_projects'.tr,
              onPressed: () => onMenuPressed(4)),
        ],
      ),
    );
  }
}
