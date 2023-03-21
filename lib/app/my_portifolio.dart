import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/cv_view/cv_viewer.dart';
import 'package:my_portifolio/app/pages/about/portifolio_about.dart';
import 'package:my_portifolio/app/pages/footer/portifolio_footer.dart';
import 'package:my_portifolio/app/pages/header/portifolio_header.dart';
import 'package:my_portifolio/app/pages/projects/portifolio_projects.dart';
import 'package:my_portifolio/app/pages/stacks/portifolio_stacks.dart';

import 'core/translations/app_translations.dart';

class MyPortifolio extends StatelessWidget {
  const MyPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meu portifólio',
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: const Locale('pt', 'BR'),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/pdf': (context) => const CvViewer(),
      },
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colors.dark,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: scrollController,
          child: Column(
            children: [
              const PortifolioHeader(),
              const PortifolioAbout(),
              const PortifolioStacks(),
              const PortifolioProjects(),
              PortifolioFooter(controller: scrollController),
            ],
          ),
        ),
      ),
    );
  }
}
