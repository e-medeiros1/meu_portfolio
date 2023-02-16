import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/styles/text_styles.dart';

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
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        padding: EdgeInsets.symmetric(vertical: context.percentHeight(.025)),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
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
            AnimatedContainer(
              duration: duration,
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
    );
  }
}
