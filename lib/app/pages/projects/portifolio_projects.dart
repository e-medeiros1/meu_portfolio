// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';
import 'package:my_portifolio/app/core/widgets/my_outlined_button.dart';
import 'package:my_portifolio/app/core/widgets/section_title.dart';

import '../../models/projects_model.dart';

class PortifolioProjects extends StatelessWidget {
  const PortifolioProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Projetos'),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: 20,
              runSpacing: 30,
              children: List.generate(
                myProjects.length,
                (index) => MyProjects(index: index, onPressed: () {}),
              ),
            ),
          ),
          SizedBox(height: context.percentHeight(.1)),
        ],
      ),
    );
  }
}

class MyProjects extends StatelessWidget {
  final int index;
  final VoidCallback onPressed;
  const MyProjects({
    Key? key,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.colors.dark,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 40),
                blurRadius: 40,
                color: context.colors.light.withOpacity(.1)),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Image.asset(
            myProjects[index].image,
            width: 220,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.percentWidth(.025),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    myProjects[index].title.toUpperCase(),
                    style: context.textStyles.textSemiBold.copyWith(
                        fontSize: 20, color: context.colors.light, height: 1.5),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    myProjects[index].description,
                    textAlign: TextAlign.center,
                    style: context.textStyles.textRegular
                        .copyWith(fontSize: 18, color: context.colors.light),
                  ),
                  const SizedBox(height: 30),
                  MyOutlinedButton(
                      color: context.colors.light,
                      onPressed: onPressed,
                      imageSrc: 'assets/images/github2.png',
                      text: 'Ver repositório'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
