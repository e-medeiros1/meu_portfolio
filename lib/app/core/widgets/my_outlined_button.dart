// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget image;
  final String text;

  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            side: MaterialStatePropertyAll(
              BorderSide(color: context.colors.light),
            ),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: 20,
                horizontal: context.percentWidth(.020),
              ),
            ),
            overlayColor: MaterialStatePropertyAll(context.colors.light.withOpacity(.1)),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image,
              const SizedBox(width: 10),
              Text(
                text,
                style: context.textStyles.textRegular.copyWith(color: context.colors.light, fontSize: 18),
              ),
            ],
          )),
    );
  }
}
