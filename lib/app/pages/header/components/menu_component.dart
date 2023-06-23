// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

class MenuItem extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  const MenuItem({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(
                  context.colors.light.withOpacity(.1))),
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: context.textStyles.textExtraBold
                .copyWith(color: context.colors.light, fontSize: 20),
          )),
    );
  }
}
