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

  void _showProjectDetails(
      BuildContext context,
      String projectName,
      String projectDescription,
      List<String> projectImages,
      VoidCallback onPressed,
      String buttonText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MyProjectsDetail(
          buttonText: buttonText,
          onPressed: onPressed,
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
                      MyProjectsCard(
                        title: 'valou',
                        description:
                            'Controle de relações, comportamento e satisfação no ambiente de trabalho',
                        extendedDescription:
                            'Implementação de soluções com endpoints, controle de estado local, localization para múltiplos idiomas(Inglês, Alemão e Italiano), versionamento, manutenção e criação de telas diversas e personalização de PDF',
                        imageSrc: 'assets/images/valou_image_1.png',
                        onPressed: () => _showProjectDetails(
                          context,
                          'valou',
                          'rk_extended_description'.tr,
                          [
                            'assets/project_images/valou_image_1.png',
                            'assets/project_images/valou_image_2.png',
                            'assets/project_images/valou_image_3.png',
                          ],
                          () => instance.launchInWeb(
                              'https://play.google.com/store/apps/details?id=com.bridgemt.goodwork.app&hl=pt_BR'),
                          'Acesse na loja',
                        ),
                      ),
                      MyProjectsCard(
                        title: 'Ruined Kingdom',
                        description: 'rk_description'.tr,
                        extendedDescription: 'rk_extended_description'.tr,
                        imageSrc: 'assets/images/ruinedKingdom.png',
                        onPressed: () => _showProjectDetails(
                            context,
                            'Ruined Kingdom',
                            'rk_extended_description'.tr,
                            [
                              'assets/project_images/rk_image_1.png',
                              'assets/project_images/rk_image_2.png',
                            ],
                            () => instance
                                .launchInWeb('${instance.toGithub}ruined_kingdom'),
                            'repository_button'.tr),
                      ),
                      MyProjectsCard(
                          title: 'Backoffice Vakinha Burger',
                          description: 'backoffice_vakinha_description'.tr,
                          extendedDescription:
                              'backoffice_vakinha_extended_description'.tr,
                          onPressed: () => _showProjectDetails(
                              context,
                              'Backoffice Vakinha Burger',
                              'backoffice_vakinha_extended_description'.tr,
                              [
                                'assets/project_images/bvk_image_1.png',
                                'assets/project_images/bvk_image_2.png',
                                'assets/project_images/bvk_image_3.png',
                                'assets/project_images/bvk_image_4.png',
                              ],
                              () => instance.launchInWeb(
                                  '${instance.toGithub}backoffice_vakinha_burger'),
                              'repository_button'.tr),
                          imageSrc: 'assets/images/vakinhaBurger.png'),
                      MyProjectsCard(
                          title: 'Só Saladas',
                          description: 'saladas_description'.tr,
                          extendedDescription: 'saladas_extended_description'.tr,
                          onPressed: () => _showProjectDetails(
                              context,
                              'Só Saladas',
                              'saladas_extended_description'.tr,
                              [
                                'assets/project_images/ss_image_1.png',
                                'assets/project_images/ss_image_2.png',
                                'assets/project_images/ss_image_3.png',
                                'assets/project_images/ss_image_4.png',
                              ],
                              () =>
                                  instance.launchInWeb('${instance.toGithub}so_saladas'),
                              'repository_button'.tr),
                          imageSrc: 'assets/images/soSaladas.png'),
                      MyProjectsCard(
                          title: 'Exclusive Diary',
                          description: 'diary_description'.tr,
                          extendedDescription: 'diary_extended_description'.tr,
                          onPressed: () => _showProjectDetails(
                              context,
                              'Exclusive Diary',
                              'diary_extended_description'.tr,
                              [
                                'assets/project_images/ed_image_1.png',
                                'assets/project_images/ed_image_2.png',
                              ],
                              () => instance
                                  .launchInWeb('${instance.toGithub}exclusive_diary'),
                              'repository_button'.tr),
                          imageSrc: 'assets/images/exclusiveDiary.png'),
                      MyProjectsCard(
                          title: 'Vakinha Burger',
                          description: 'vakinha_description'.tr,
                          extendedDescription: 'vakinha_extended_description'.tr,
                          onPressed: () => _showProjectDetails(
                              context,
                              'Vakinha Burger',
                              'vakinha_extended_description'.tr,
                              [
                                'assets/project_images/vk_image_1.png',
                                'assets/project_images/vk_image_2.png',
                                'assets/project_images/vk_image_3.png',
                              ],
                              () => instance
                                  .launchInWeb('${instance.toGithub}vakinha_burguer'),
                              'repository_button'.tr),
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
