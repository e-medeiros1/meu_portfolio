import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/cv_view/cv_viewer.dart';

import 'core/translations/app_translations.dart';
import 'pages/about/portifolio_about.dart';
import 'pages/footer/portifolio_footer.dart';
import 'pages/header/portifolio_header.dart';
import 'pages/menu/portifolio_menu.dart';
import 'pages/projects/portifolio_projects.dart';
import 'pages/stacks/portifolio_stacks.dart';

class Myportfolio extends StatelessWidget {
  const Myportfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meu portfólio',
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

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController scrollController = ScrollController();

  final globalKey1 = GlobalKey();
  final globalKey2 = GlobalKey();
  final globalKey3 = GlobalKey();
  final globalKey4 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colors.dark,
        body: Column(
          children: [
            portfolioMenu(menuClicked: _onMenuClicked),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    portfolioHeader(key: globalKey1)
                        .animate()
                        .fadeIn(duration: 2500.ms, curve: Curves.easeOutQuad)
                        .slide(),
                    portfolioAbout(key: globalKey2),
                    portfolioStacks(key: globalKey3),
                    portfolioProjects(key: globalKey4),
                    portfolioFooter(controller: scrollController),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onMenuClicked(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = globalKey1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = globalKey2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = globalKey3.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox = globalKey4.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }

    final offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(
      (offset.dy - 80) + scrollController.offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
