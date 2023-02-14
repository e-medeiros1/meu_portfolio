import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/pages/footer/portifolio_footer.dart';
import 'package:my_portifolio/app/pages/header/portifolio_header.dart';
import 'package:my_portifolio/app/pages/projects/portifolio_projects.dart';
import 'package:my_portifolio/app/pages/stacks/portifolio_stacks.dart';

class MyPortifolio extends StatelessWidget {
  const MyPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meu portifólio',
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.1)),
          child: Column(
            children: const [
              PortifolioHeader(),
              PortifolioStacks(),
              PortifolioProjects(),
              PortifolioFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
