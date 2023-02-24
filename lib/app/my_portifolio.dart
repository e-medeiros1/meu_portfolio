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
// final isLight = SchedulerBinding.instance.window.platformBrightness == Brightness.light;
    
    return GetMaterialApp(
      title: 'Meu portifólio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      translations: AppTranslations(),
      locale: const Locale('pt', 'BR'),
      darkTheme: ThemeData.dark(),
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
    return Scaffold(
      backgroundColor: context.colors.dark,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PortifolioHeader(),
            PortifolioAbout(),
            PortifolioStacks(),
            PortifolioProjects(),
            PortifolioFooter(),
          ],
        ),
      ),
    );
  }
}
