import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/widgets/section_title.dart';
import 'package:my_portifolio/app/models/stacks_model.dart';
import 'package:my_portifolio/app/pages/stacks/components/stacks_card.dart';

class PortifolioStacks extends StatelessWidget {
  const PortifolioStacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: context.percentHeight(.05)),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Stacks'),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 10,
              runSpacing: 15,
              children: List.generate(
                stacksModel.length,
                (index) => StacksCard(index: index),
              ),
            ),
          ),
          SizedBox(height: context.percentHeight(.1)),
        ],
      ),
    );
  }
}
