// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/styles/colors_styles.dart';
import 'package:my_portifolio/app/core/widgets/my_outlined_button.dart';

import 'components/about_me.dart';
import 'components/about_text.dart';

class PortifolioAbout extends StatelessWidget {
  const PortifolioAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: context.percentHeight(.045)),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AboutText(),
              SizedBox(width: context.percentWidth(.025)),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    const AboutMe(
                        text:
                            'Encantando por tecnologia desde pequeno, logo me vi interessado em trabalhar com montagem e manutenção de computadores, com o tempo, ao ingressar na faculdade de Ciência da computação, conheci a programação e após um período de estágio como suporte técnico, decidi migrar em definitivo para o desenvolvimento de software.'),
                    const AboutMe(
                        text:
                            'Nos últimos meses passei a estudar majoritariamente Dart e Flutter para criação de aplicativos híbridos, faz parte do meu escopo e já utilizei em projetos pessoais:\nLógica de programação, conceitos de POO, integração com serviços Firebase, consumo de api\'s diversas, Future, Streams, conceitos básicos de clean code e atualmente estudo GetX.'),
                    SizedBox(height: context.percentHeight(.05)),
                    MyOutlinedButton(
                      color: context.colors.light,
                      onPressed: () {},
                      imageSrc: 'assets/images/download.png',
                      text: 'Baixar currículo',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
