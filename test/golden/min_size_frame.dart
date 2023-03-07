import 'package:flutter/widgets.dart';

/// Provide a frame with smallest iPhone width
Widget minSizeFrame(Widget child) {
  return SizedBox(width: 375, child: child);
}
