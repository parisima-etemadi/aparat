import 'package:aparat/data/repositories/video_repository.dart';
import 'package:aparat/ui/search/pages/play_screen.dart';
import 'package:flutter/material.dart';

import 'data/data provider/Video_data_provider_by_search.dart';
import 'ui/search/pages/search_result_page.dart';

void main() {
  runApp(const MyApp());
   VideoDataProvider videoDataProvider = VideoDataProvider();
   videoDataProvider.getSimilarVideos(2);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SearchResultPage(),
    );
  }
}
