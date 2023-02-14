import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

class PortifolioHeader extends StatelessWidget {
  const PortifolioHeader({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? textButtonStyle = context.textStyles.textMedium
        .copyWith(fontSize: 20, color: context.colors.light);
    return Column(
      children: [
        SizedBox(
          width: context.screenWidth,
          height: context.percentHeight(.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: FadeInImage.assetNetwork(
                  image: 'assets/images/myLogo.png',
                  placeholder: 'assets/images/transparent.png',
                  height: context.percentHeight(.09),
                  fit: BoxFit.scaleDown,
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text('Home', style: textButtonStyle)),
                  TextButton(
                      onPressed: () {},
                      child: Text('About me', style: textButtonStyle)),
                  TextButton(
                      onPressed: () {},
                      child: Text('Stacks', style: textButtonStyle)),
                  TextButton(
                      onPressed: () {},
                      child: Text('Projects', style: textButtonStyle)),
                  TextButton(
                      onPressed: () {},
                      child: Text('Contacts', style: textButtonStyle)),
                  SizedBox(width: context.percentWidth(.025)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.catching_pokemon,
                        color: context.colors.light,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.catching_pokemon,
                          color: context.colors.light)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.catching_pokemon,
                          color: context.colors.light)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: context.screenWidth,
          height: context.percentHeight(.85),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Hi!\nMy name is\nErilândio Santos\nI build things with Flutter',
                softWrap: true,
                style: context.textStyles.textExtraBold.copyWith(
                    fontSize: 60,
                    letterSpacing: -1,
                    color: context.colors.light),
              ),
              FadeInImage.assetNetwork(
                image: 'assets/images/oldComputer.gif',
                placeholder: 'assets/images/transparent.png',
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
