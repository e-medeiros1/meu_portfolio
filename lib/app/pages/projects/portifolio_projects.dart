// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/controller/url_launcher_controller.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/widgets/section_title.dart';

import 'components/my_projects_card.dart';

class PortfolioProjects extends StatefulWidget {
  const PortfolioProjects({super.key});

  @override
  State<PortfolioProjects> createState() => _PortfolioProjectsState();
}

class _PortfolioProjectsState extends State<PortfolioProjects> {
  @override
  Widget build(BuildContext context) {
    final CardController instance = Get.put(CardController());

    return Container(
      width: context.percentWidth(.9),
      padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.01)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SectionTitle(title: 'projects_title'.tr),
          ),
          SizedBox(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: Wrap(
                spacing: 10,
                runSpacing: 15,
                alignment: WrapAlignment.center,
                children: [
                  MyProjectsCard(
                      title: 'Ruined Kingdom',
                      description: 'rk_description'.tr,
                      extendedDescription: 'rk_extended_description'.tr,
                      onPressed: () =>
                          instance.launchInWeb('${instance.toGithub}ruined_kingdom'),
                      imageSrc: 'assets/images/ruinedKingdom.png'),
                  MyProjectsCard(
                      title: 'Só Saladas',
                      description: 'saladas_description'.tr,
                      extendedDescription: 'saladas_extended_description'.tr,
                      onPressed: () =>
                          instance.launchInWeb('${instance.toGithub}so_saladas'),
                      imageSrc: 'assets/images/soSaladas.png'),
                  MyProjectsCard(
                      title: 'Exclusive Diary',
                      description: 'diary_description'.tr,
                      extendedDescription: 'diary_extended_description'.tr,
                      onPressed: () =>
                          instance.launchInWeb('${instance.toGithub}exclusive_diary'),
                      imageSrc: 'assets/images/exclusiveDiary.png'),
                  MyProjectsCard(
                      title: 'Vakinha Burger',
                      description: 'vakinha_description'.tr,
                      extendedDescription: 'vakinha_extended_description'.tr,
                      onPressed: () =>
                          instance.launchInWeb('${instance.toGithub}vakinha_burguer'),
                      imageSrc: 'assets/images/vakinhaBurger.png'),
                  MyProjectsCard(
                      title: 'Backoffice Vakinha Burger',
                      description: 'backoffice_vakinha_description'.tr,
                      extendedDescription: 'backoffice_vakinha_extended_description'.tr,
                      onPressed: () => instance
                          .launchInWeb('${instance.toGithub}backoffice_vakinha_burger'),
                      imageSrc: 'assets/images/vakinhaBurger.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
