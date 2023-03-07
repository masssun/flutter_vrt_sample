import 'package:flutter_vrt_sample/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'min_size_frame.dart';

void main() {
  testGoldens('Generate MyHomePage screenshots', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
      ])
      ..addScenario(widget: const MyHomePage(title: 'Flutter Demo Home Page'));

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'my_home_page');
  });

  testGoldens('Generate CountText screenshots', (tester) async {
    const countText = CountText(1234567890);
    final builder = GoldenBuilder.column(wrap: minSizeFrame)
      ..addScenario('CountText', countText)
      ..addTextScaleScenario('text 2x', countText, textScaleFactor: 2);

    await tester.pumpWidgetBuilder(builder.build());

    await screenMatchesGolden(tester, 'count_text');
  });
}
