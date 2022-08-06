import 'package:aparat/domain/blocs/search/search_bloc.dart';
import 'package:aparat/ui/search/pages/search_result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/play_screen_display.dart';

class PlayScreenPage extends StatelessWidget {
  const PlayScreenPage({Key? key,required this.uid}) : super(key: key);
  final String uid;
  // final String title;
  // final String author;
  // final double videoViews;
  // final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocProvider(
      create: (context) => SearchBloc(videoRepository),
      child: PlayScreenDisplay(
        uid:uid
      ),
    ),);
  }
}
