import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/models/stacks_model.dart';
import 'package:my_portifolio/app/pages/stacks/components/stacks_card.dart';
import 'package:my_portifolio/app/core/widgets/section_title.dart';

class PortifolioStacks extends StatefulWidget {
  const PortifolioStacks({super.key});

  @override
  State<PortifolioStacks> createState() => _PortifolioStacksState();
}

class _PortifolioStacksState extends State<PortifolioStacks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: context.percentHeight(.05)),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Stacks'),
          SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(horizontal: context.percentWidth(.025)),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  stacksModel.length, (index) => StacksCard(index: index)),
            ),
          ),
        ],
      ),
    );
  }
}
