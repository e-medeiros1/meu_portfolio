// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
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
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AboutMe(
                        text:
                            'Sempre fui encantando por tecnologia e isso me levou a trabalhar com montagem e manutenção de computadores, com o tempo decidi ingressar na faculdade de Ciência da computação, onde conheci a programação, após um período de estágio como suporte técnico, decidi migrar em definitivo para o desenvolvimento de software.'),
                    const AboutMe(
                        text:
                            'Nos últimos meses tenho estudado majoritariamente com Dart e Flutter para criação de aplicativos híbridos, faz parte do meu escopo e já utilizei em projetos pessoais: Lógica de programação, conceitos de POO, integração com serviços Firebase, consumo de api\'s diversas, Future, Streams, conceitos básicos de clean code e atualmente estudo GetX.'),
                    SizedBox(height: context.percentHeight(.05)),
                    MyOutlinedButton(
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
