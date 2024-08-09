// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/my_outlined_button.dart';

class MyProjectsCard extends StatefulWidget {
  final String title;
  final String description;
  final String extendedDescription;
  final VoidCallback onPressed;
  final String imageSrc;
  const MyProjectsCard({
    Key? key,
    required this.title,
    required this.description,
    required this.extendedDescription,
    required this.onPressed,
    required this.imageSrc,
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
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        hoverColor: const Color(0xFF525f6d),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 310,
          width: 450,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF506b86), width: .5),
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
                widget.imageSrc,
                width: context.percentHeight(.18),
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.percentWidth(.015),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            widget.title.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: context.textStyles.textRegular.copyWith(
                                fontSize: 19, color: context.colors.light, height: 1.2),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        !isHover ? widget.description : widget.extendedDescription,
                        textAlign: TextAlign.center,
                        style: context.textStyles.textRegular
                            .copyWith(fontSize: 16, color: context.colors.light),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: MyOutlinedButton(
                            onPressed: widget.onPressed,
                            image: Image.asset('assets/images/github2.png',
                                height: context.percentHeight(.025)),
                            text: 'repository_button'.tr),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
