import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:valentine_cafe_app/main.dart' as app;

void main() {
  testWidgets(
    "App should run properly",
    (widgetTester) async {
      mockNetworkImagesFor(() async {
        app.main();

        await widgetTester.pumpAndSettle();

        final wantedText = find.text("Espresso");

        expect(wantedText, findsOneWidget);
      });
    },
  );
}
