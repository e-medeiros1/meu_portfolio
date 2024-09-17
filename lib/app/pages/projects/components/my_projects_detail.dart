import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

import '../../../core/widgets/my_outlined_button.dart';

class MyProjectsDetail extends StatelessWidget {
  final String projectDescription;
  final List<String> projectImages;
  final VoidCallback onPressed;

  const MyProjectsDetail({
    super.key,
    required this.onPressed,
    required this.projectDescription,
    required this.projectImages,
  });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Align(
        alignment: Alignment.topRight,
        child: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: Icon(Icons.close, color: context.colors.light)),
      ),
      backgroundColor: context.colors.dark,
      content: SizedBox(
        width: context.screenWidth * 0.4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            SizedBox(
              height: 280,
              child: CarouselSlider(
                options: CarouselOptions(
                  pauseAutoPlayOnTouch: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  autoPlay: true,
                ),
                items: projectImages.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(image, fit: BoxFit.contain),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              projectDescription,
              textAlign: TextAlign.center,
              style: context.textStyles.textRegular
                  .copyWith(fontSize: 17, color: context.colors.light),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: MyOutlinedButton(
              onPressed: onPressed,
              image: Image.asset('assets/images/github2.png',
                  height: context.percentHeight(.025)),
              text: 'repository_button'.tr),
        ),
      ],
    );
  }
}
