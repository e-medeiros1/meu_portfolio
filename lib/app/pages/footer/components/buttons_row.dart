import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/controller/url_launcher_controller.dart';
import 'package:my_portifolio/app/pages/footer/components/social_media_buttons.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final CardController instance = Get.put(CardController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SocialMediaButtons(
            onPressed: () => instance.launchInWeb(instance.toGithub), icon: FontAwesomeIcons.github),
        SocialMediaButtons(
            onPressed: () => instance.launchInWeb(instance.toLinkedin),
            icon: FontAwesomeIcons.linkedin),
        SocialMediaButtons(
            onPressed: () => instance.launchInMail(instance.toEmail),
            icon: FontAwesomeIcons.googlePlus),
        SocialMediaButtons(
            onPressed: () => instance.launchWhatsapp(instance.toWhatsapp),
            icon: FontAwesomeIcons.whatsapp),
      ],
    );
  }
}
