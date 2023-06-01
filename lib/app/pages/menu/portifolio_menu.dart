import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

import '../header/components/my_dropdown_menu.dart';
import 'components/my_menu.dart';

class PortifolioMenu extends StatelessWidget {
  final ValueChanged<int> menuClicked;
  const PortifolioMenu({super.key, required this.menuClicked});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Padding(
        padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.14)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/myLogo.png',
              color: context.colors.light,
              fit: BoxFit.cover,
              height: context.percentHeight(.11),
            ),
            const Spacer(),
            if (constraints.maxWidth > 900)
              MyMenu(
                onMenuPressed: menuClicked,
              ),
            const SizedBox(width: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: MyDropdownMenu(),
            )
          ],
        ),
      ),
    );
  }
}
