// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/my_outlined_button.dart';

class MyProjectsCard extends StatefulWidget {
  final String title;
  final String description;

  final String imageSrc;
  final VoidCallback? onTap;
  final VoidCallback onPressed;
  const MyProjectsCard({
    Key? key,
    required this.title,
    required this.description,
    this.onTap,
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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 280,
        width: 360,
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
            const SizedBox(width: 15),
            Image.asset(
              widget.imageSrc,
              width: context.percentHeight(.16),
              fit: BoxFit.contain,
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
                    FittedBox(
                      fit: BoxFit.fill,
                      child: SizedBox(
                        width: 160,
                        child: Text(
                          widget.description,
                          textAlign: TextAlign.center,
                          style: context.textStyles.textRegular.copyWith(
                            fontSize: 15,
                            color: context.colors.light,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: MyOutlinedButton(
                          onPressed: widget.onPressed, text: 'saiba_mais'.tr),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
