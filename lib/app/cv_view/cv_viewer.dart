import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/styles/colors_styles.dart';
import 'package:my_portfolio/app/core/styles/text_styles.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CvViewer extends StatefulWidget {
  const CvViewer({super.key});

  @override
  State<CvViewer> createState() => _CvViewerState();
}

class _CvViewerState extends State<CvViewer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: context.colors.dark,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: context.colors.light),
          actionsIconTheme: IconThemeData(color: context.colors.light),
          title: Text(
            'cv'.tr,
            style: context.textStyles.textRegular.copyWith(color: context.colors.light),
          ),
        ),
        body: SfPdfViewer.asset('assets/cv/my_cv.pdf',
            initialZoomLevel: 1.5, enableDoubleTapZooming: true),
      ),
    );
  }
}
