import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

import '../../../models/stacks_model.dart';

class StacksCard extends StatefulWidget {
  final int index;
  const StacksCard({
    required this.index,
    super.key,
  });

  @override
  State<StacksCard> createState() => _StacksCardState();
}

class _StacksCardState extends State<StacksCard> {
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
          padding: EdgeInsets.symmetric(vertical: context.percentHeight(.025)),
          height: 220,
          width: 220,
          decoration: BoxDecoration(
              border: Border.all(
                  color: context.colors.light.withOpacity(.1), width: .5),
              color: context.colors.dark,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                if (isHover)
                  BoxShadow(
                      offset: const Offset(0, 30),
                      blurRadius: 30,
                      color: context.colors.light.withOpacity(.1))
              ]),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(context.percentHeight(.02)),
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    color: context.colors.dark.withOpacity(.8),
                    shape: BoxShape.circle),
                child: Image.asset(stacksModel[widget.index].image,
                    fit: BoxFit.cover),
              ),
              SizedBox(height: context.percentHeight(.025)),
              Text(
                stacksModel[widget.index].title,
                style: context.textStyles.textSemiBold
                    .copyWith(color: context.colors.light, fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
