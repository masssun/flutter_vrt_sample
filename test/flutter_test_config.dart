import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_vrt_sample/gen/assets.gen.dart';
import 'package:flutter_vrt_sample/gen/fonts.gen.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await _loadJapaneseFont();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      skipGoldenAssertion: () => !Platform.isMacOS,
    ),
  );
}

Future<void> _loadJapaneseFont() {
  final binary = rootBundle.load(Assets.fonts.notoSansJPMedium);
  final loader = FontLoader(FontFamily.roboto)..addFont(binary);
  return loader.load();
}
