import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';

class MyProjectsDetail extends StatelessWidget {
  final String projectDescription;
  final List<String> projectImages;

  const MyProjectsDetail({
    super.key,
    required this.projectDescription,
    required this.projectImages,
  });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: OutlinedButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
              side: WidgetStatePropertyAll(
                BorderSide(color: context.colors.light),
              ),
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(
                  vertical: context.percentHeight(.013),
                  horizontal: context.percentWidth(.01),
                ),
              ),
              overlayColor: WidgetStatePropertyAll(context.colors.light.withOpacity(.1)),
            ),
            onPressed: Navigator.of(context).pop,
            child: Text(
              'Fechar',
              style: context.textStyles.textRegular
                  .copyWith(color: context.colors.light, fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }
}
