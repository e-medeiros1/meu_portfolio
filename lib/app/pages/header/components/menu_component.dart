import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

class MenuComponent extends StatefulWidget {
  const MenuComponent({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuComponentState createState() => _MenuComponentState();
}

class _MenuComponentState extends State<MenuComponent> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuComponentItems = [
    "Home",
    "Sobre",
    "Stacks",
    "Projetos",
    "Contatos",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.1)),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: context.colors.dark,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 50),
            blurRadius: 50,
            color: context.colors.light.withOpacity(.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menuComponentItems.length,
          (index) => buildMenuComponentItem(index),
        ),
      ),
    );
  }

  Widget buildMenuComponentItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuComponentItems[index],
                style: TextStyle(fontSize: 19, color: context.colors.light),
              ),
              // Hover
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  left: 0,
                  right: 0,
                  bottom:
                      selectedIndex != index && hoverIndex == index ? -2 : -32,
                  child: Icon(
                    Icons.arrow_drop_up_rounded,
                    color: context.colors.light,
                  )),
              // Select
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Icon(
                  Icons.arrow_drop_up_rounded,
                  color: context.colors.light,
                ),
              ),
            ],
          ),
        ),
      );
}
