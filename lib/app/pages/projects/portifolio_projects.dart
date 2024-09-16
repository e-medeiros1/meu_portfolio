// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/controller/url_launcher_controller.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/widgets/section_title.dart';
import 'package:my_portfolio/app/pages/projects/components/my_projects_detail.dart';

import 'components/my_projects_card.dart';

class PortfolioProjects extends StatefulWidget {
  const PortfolioProjects({super.key});

  @override
  State<PortfolioProjects> createState() => _PortfolioProjectsState();
}

class _PortfolioProjectsState extends State<PortfolioProjects> {
  final ScrollController _scrollController = ScrollController();

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 550,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 550,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _showProjectDetails(BuildContext context, String projectName,
      String projectDescription, List<String> projectImages) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MyProjectsDetail(
          projectDescription: projectDescription,
          projectImages: projectImages,
        );
      },
    );
  }

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
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: context.percentHeight(.05)),
              child: SectionTitle(title: 'projects_title'.tr),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 300, minWidth: 500),
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => _showProjectDetails(
                            context, 'Ruined Kingdom', 'rk_extended_description'.tr, [
                          'assets/images/ruinedKingdom.png',
                          'assets/images/ruinedKingdom.png',
                        ]),
                        child: MyProjectsCard(
                            title: 'Ruined Kingdom',
                            description: 'rk_description'.tr,
                            extendedDescription: 'rk_extended_description'.tr,
                            onPressed: () => instance
                                .launchInWeb('${instance.toGithub}ruined_kingdom'),
                            imageSrc: 'assets/images/ruinedKingdom.png'),
                      ),
                      MyProjectsCard(
                          title: 'Só Saladas',
                          description: 'saladas_description'.tr,
                          extendedDescription: 'saladas_extended_description'.tr,
                          onTap: () => _showProjectDetails(context, 'Só Saladas',
                                  'saladas_extended_description'.tr, [
                                'assets/images/soSaladas.png',
                                'assets/images/soSaladas.png',
                              ]),
                          onPressed: () =>
                              instance.launchInWeb('${instance.toGithub}so_saladas'),
                          imageSrc: 'assets/images/soSaladas.png'),
                      MyProjectsCard(
                          title: 'Exclusive Diary',
                          description: 'diary_description'.tr,
                          extendedDescription: 'diary_extended_description'.tr,
                          onTap: () => _showProjectDetails(context, 'Exclusive Diary',
                                  'diary_extended_description'.tr, [
                                'assets/images/exclusiveDiary.png',
                                'assets/images/exclusiveDiary.png',
                              ]),
                          onPressed: () =>
                              instance.launchInWeb('${instance.toGithub}exclusive_diary'),
                          imageSrc: 'assets/images/exclusiveDiary.png'),
                      MyProjectsCard(
                          title: 'Vakinha Burger',
                          description: 'vakinha_description'.tr,
                          extendedDescription: 'vakinha_extended_description'.tr,
                          onTap: () => _showProjectDetails(context, 'Vakinha Burger',
                                  'vakinha_extended_description'.tr, [
                                'assets/images/vakinhaBurger.png',
                                'assets/images/vakinhaBurger.png',
                              ]),
                          onPressed: () =>
                              instance.launchInWeb('${instance.toGithub}vakinha_burguer'),
                          imageSrc: 'assets/images/vakinhaBurger.png'),
                      MyProjectsCard(
                          title: 'Backoffice Vakinha Burger',
                          description: 'backoffice_vakinha_description'.tr,
                          extendedDescription:
                              'backoffice_vakinha_extended_description'.tr,
                          onTap: () => _showProjectDetails(
                                  context,
                                  'Backoffice Vakinha Burger',
                                  'backoffice_vakinha_extended_description'.tr, [
                                'assets/images/vakinhaBurger.png',
                                'assets/images/vakinhaBurger.png',
                              ]),
                          onPressed: () => instance.launchInWeb(
                              '${instance.toGithub}backoffice_vakinha_burger'),
                          imageSrc: 'assets/images/vakinhaBurger.png'),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 0,
                  bottom: 0,
                  child: GestureDetector(
                    
                    onTap: _scrollLeft,
                    child: CircleAvatar(
                      backgroundColor: context.colors.dark,
                      radius: 26,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 26,
                          color: context.colors.light,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: _scrollRight,
                    child: CircleAvatar(
                      backgroundColor: context.colors.dark,
                      radius: 26,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 26,
                        color: context.colors.light,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
