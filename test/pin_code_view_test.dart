import 'package:flutter_test/flutter_test.dart';

import 'package:pin_code_view/pin_code_view.dart';

void main() {
  testWidgets("title and subtitle", (WidgetTester tester) async {
    await tester.pumpWidget(
      PinCode(
        title: "Verify Code",
        subTitle: "A code has been sent to your device, please enter it here.",
        onChange: (_) {},
      ),
    );

    var title = find.text("Verify Code");
    var subtitle =
        find.text("A code has been sent to your device, please enter it here.");

    expect(title, findsOneWidget);
    expect(subtitle, findsOneWidget);
  });
}
