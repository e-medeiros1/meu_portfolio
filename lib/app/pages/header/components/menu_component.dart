import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class MenuComponent extends StatefulWidget {
  const MenuComponent({
    super.key,
  });

  @override
  State<MenuComponent> createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  List<String> menuComponentItems = [
    "Sobre",
    "Stacks",
    "Projetos",
    "Contatos",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.percentWidth(.35),
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          runSpacing: 20,
          spacing: 70,
          children: List.generate(
            menuComponentItems.length,
            (index) => Text(
              menuComponentItems[index],
              style: context.textStyles.textExtraBold
                  .copyWith(color: context.colors.light, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
