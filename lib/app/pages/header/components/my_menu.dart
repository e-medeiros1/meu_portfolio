import 'package:flutter/material.dart';

import 'menu_component.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MenuItem(buttonName: 'Sobre', onPressed: () {}),
          MenuItem(buttonName: 'Stacks', onPressed: () {}),
          MenuItem(buttonName: 'Projetos', onPressed: () {}),
          MenuItem(buttonName: 'Contatos', onPressed: () {}),
        ],
      ),
    );
  }
}
