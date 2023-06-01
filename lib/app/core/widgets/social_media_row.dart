import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/controller/url_launcher_controller.dart';
import 'package:my_portifolio/app/core/widgets/social_media_button.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    final CardController instance = Get.put(CardController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Tooltip(
          message: 'Github',
          child: SocialMediaButton(
              onPressed: () => instance.launchInWeb(instance.toGithub),
              icon: FontAwesomeIcons.github),
        ),
        Tooltip(
          message: 'Linkedin',
          child: SocialMediaButton(
              onPressed: () => instance.launchInWeb(instance.toLinkedin),
              icon: FontAwesomeIcons.linkedin),
        ),
        Tooltip(
          message: 'Email',
          child: SocialMediaButton(
              onPressed: () => instance.launchInMail(instance.toEmail),
              icon: FontAwesomeIcons.googlePlus),
        ),
        Tooltip(
          message: 'Whatsapp',
          child: SocialMediaButton(
              onPressed: () => instance.launchWhatsapp(instance.toWhatsapp),
              icon: FontAwesomeIcons.whatsapp),
        ),
      ],
    );
  }
}
