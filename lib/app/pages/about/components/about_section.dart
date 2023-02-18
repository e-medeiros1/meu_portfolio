import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';

import 'about_me.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AboutMeText(
          text:
              'Encantando por tecnologia desde pequeno, logo me vi interessado em trabalhar com montagem e manutenção de computadores, com o tempo, ao ingressar na faculdade de Ciência da computação, conheci a programação e após um período de estágio como suporte técnico, decidi migrar em definitivo para o desenvolvimento de software.',
        ),
        const AboutMeText(
          text:
              'Nos últimos meses passei a estudar majoritariamente Dart e Flutter para criação de aplicativos híbridos, faz parte do meu escopo e já utilizei em projetos pessoais:\nLógica de programação, conceitos de POO, integração com serviços Firebase, consumo de api\'s diversas, Future, Streams, conceitos básicos de clean code e atualmente estudo GetX.',
        ),
        SizedBox(height: context.percentHeight(.05)),
      ],
    );
  }
}
