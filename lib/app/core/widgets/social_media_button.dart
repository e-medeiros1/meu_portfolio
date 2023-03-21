// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';

class SocialMediaButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData? icon;
  const SocialMediaButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        focusColor: Colors.transparent,
        hoverColor: context.colors.light.withOpacity(.01),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: onPressed,
        icon: FaIcon(icon),
        color: context.colors.light.withOpacity(.8),
        iconSize: 25,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.zero);
  }
}
