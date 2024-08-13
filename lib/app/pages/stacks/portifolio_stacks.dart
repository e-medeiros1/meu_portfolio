import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/widgets/section_title.dart';
import 'package:my_portfolio/app/models/stacks_model.dart';
import 'package:my_portfolio/app/pages/stacks/components/stacks_card.dart';

class PortfolioStacks extends StatelessWidget {
  const PortfolioStacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.percentWidth(.9),
      padding: EdgeInsets.symmetric(horizontal: context.percentWidth(.01)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: context.percentHeight(.05)),
            child: const SectionTitle(title: 'Stacks'),
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: 200),
            child: CarouselView(
              backgroundColor: Colors.transparent,
              itemExtent: 180,
              shrinkExtent: 160,
              children: List.generate(
                stacksModel.length,
                (index) => StacksCard(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
