import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/my_outlined_button.dart';
import '../../../models/projects_model.dart';

class MyProjectsCard extends StatefulWidget {
  final int index;
  final VoidCallback onPressed;
  const MyProjectsCard({
    Key? key,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<MyProjectsCard> createState() => _MyProjectsCardState();
}

class _MyProjectsCardState extends State<MyProjectsCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 320,
          width: 500,
          decoration: BoxDecoration(
              border: Border.all(
                  color: context.colors.light.withOpacity(.1), width: .5),
              borderRadius: BorderRadius.circular(10),
              color: context.colors.dark,
              boxShadow: [
                if (isHover)
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
                myProjects[widget.index].image,
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
                        myProjects[widget.index].title.toUpperCase(),
                        style: context.textStyles.textSemiBold.copyWith(
                            fontSize: 20,
                            color: context.colors.light,
                            height: 1.5),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        myProjects[widget.index].description,
                        textAlign: TextAlign.center,
                        style: context.textStyles.textRegular.copyWith(
                            fontSize: 18, color: context.colors.light),
                      ),
                      const SizedBox(height: 30),
                      MyOutlinedButton(
                          onPressed: widget.onPressed,
                          imageSrc: 'assets/images/github2.png',
                          text: 'Ver repositório'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
