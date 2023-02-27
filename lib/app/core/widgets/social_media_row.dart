import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/controller/url_launcher_controller.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/widgets/social_media_button.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    final CardController instance = Get.put(CardController());
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(left: 4, top: context.percentHeight(.07)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SocialMediaButton(
                  onPressed: () => instance.launchInWeb(instance.toGithub),
                  icon: FontAwesomeIcons.github),
              SocialMediaButton(
                  onPressed: () => instance.launchInWeb(instance.toLinkedin),
                  icon: FontAwesomeIcons.linkedin),
              SocialMediaButton(
                  onPressed: () => instance.launchInMail(instance.toEmail),
                  icon: FontAwesomeIcons.googlePlus),
              SocialMediaButton(
                  onPressed: () => instance.launchWhatsapp(instance.toWhatsapp),
                  icon: FontAwesomeIcons.whatsapp),
            ],
          ),
        ),
      ),
    );
  }
}
