import 'package:aparat/ui/pages/play_page.dart';
import 'package:aparat/ui/pages/search_result_page.dart';
import 'package:aparat/ui/pages/test_widget.dart';
import 'package:aparat/ui/widgets/details_video/video_item_search_result.dart';
import 'package:aparat/ui/widgets/search/aparat_pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aparat/main.dart' as app;
import 'package:integration_test/integration_test.dart';
void main() {
  //flutter driver execute one command after another
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('test search bar', (tester) async {
    app.main();
    //all state get to stable state for example if we have a number that incresed when its 1 not incresed

    final searchTextFormField=find.byType(TextField);
    final searchButton=find.byKey(Key("searchIconKey"));
    await tester.enterText(searchTextFormField,"hi");
    await tester.tap(searchButton);

    // await tester.pump();
    //todo: add a delay for 5 seconds and check if the updated
    // list size is more than 1 or

   // expect(find.byType(ListView),findsWidgets);
    await Future.delayed(const Duration(seconds: 5));
    expect(find.byType(AparatPaginationWidget), findsOneWidget);
   //expect(find.byWidgetPredicate((widget) => widget is AparatPaginationWidget), findsOneWidget);
  //  await tester.pumpAndSettle(Duration(seconds: 5));
    //

  });  testWidgets("loding ", ( tester) async{

    // await tester.pumpWidget(SearchResultPage());
   expect(find.byType(CircularProgressIndicator), findsNWidgets(2));
    await tester.pumpAndSettle();
  //


    }); testWidgets("click on items ", ( tester) async{

      //   await tester.pumpWidget(TestWidgetPrac());
      // expect(find.byType(CircularProgressIndicator), findsNWidgets(2));
      //   await tester.pumpAndSettle();
      //


    });});


}