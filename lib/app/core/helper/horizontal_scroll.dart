import 'dart:ui';

import 'package:flutter/material.dart';

class HorizontalScroll extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
