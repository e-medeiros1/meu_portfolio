import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';

import '../header/components/my_dropdown_menu.dart';
import 'components/my_menu.dart';

class PortfolioMenu extends StatelessWidget {
  final ValueChanged<int> menuClicked;
  const PortfolioMenu({super.key, required this.menuClicked});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Padding(
        padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.14)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 40),
            Image.asset(
              'assets/images/myLogo.png',
              color: context.colors.light,
              fit: BoxFit.cover,
              height: context.percentHeight(.11),
            ),
            const Spacer(),
            if (constraints.maxWidth > 1000)
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
