// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portifolio/app/core/helper/size_extensios.dart';
import 'package:my_portifolio/app/core/widgets/section_title.dart';

import '../../models/projects_model.dart';
import 'components/my_projects_card.dart';

class PortifolioProjects extends StatelessWidget {
  const PortifolioProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Projetos'),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 10,
              runSpacing: 15,
              children: List.generate(
                myProjects.length,
                (index) => MyProjectsCard(index: index, onPressed: () {}),
              ),
            ),
          ),
          SizedBox(height: context.percentHeight(.1)),
        ],
      ),
    );
  }
}
