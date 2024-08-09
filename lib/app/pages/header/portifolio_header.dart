import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/pages/header/components/glass_component.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 700, minHeight: 600),
      width: context.screenWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: .25,
          image: AssetImage('assets/images/background1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: context.percentWidth(.9),
          child: const GlassComponent(),
        ),
      ),
    );
  }
}
