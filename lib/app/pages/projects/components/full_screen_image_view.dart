import 'package:flutter/material.dart';
import 'package:my_portfolio/app/core/helper/size_extensios.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';

class FullScreenImageView extends StatelessWidget {
  final String imageAsset;
  final String tag;

  const FullScreenImageView({
    Key? key,
    required this.imageAsset,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: Navigator.of(context).pop,
          child: Scaffold(
            backgroundColor: context.colors.dark,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.close, color: context.colors.light, size: 35),
                      )),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Hero(
            tag: tag,
            child: InteractiveViewer(
              minScale: 0.5,
              maxScale: 4.0,
              child: Image.asset(
                imageAsset,
                height: context.percentHeight(.7),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
