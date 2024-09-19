// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/utils.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = constraints.maxWidth < 380 ? constraints.maxWidth : 360.0;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 330 / 260,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: cardWidth,
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
                children: [
                  SizedBox(width: cardWidth * 0.025),
                  Image.asset(
                    widget.imageSrc,
                    width: cardWidth * 0.30,
                    fit: BoxFit.contain,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: cardWidth * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Center(
                              child: Text(
                                widget.title.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: context.textStyles.textRegular.copyWith(
                                  fontSize: 16,
                                  color: context.colors.light,
                                  height: 1.1,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Text(
                              widget.description,
                              textAlign: TextAlign.center,
                              style: context.textStyles.textRegular.copyWith(
                                fontSize: 14,
                                color: context.colors.light,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Center(
                              child: MyOutlinedButton(
                                onPressed: widget.onPressed,
                                text: 'saiba_mais'.tr,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: cardWidth * 0.04),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
