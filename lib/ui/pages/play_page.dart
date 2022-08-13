import 'package:aparat/domain/blocs/search/search_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/data provider/Video_data_provider.dart';
import '../../../data/repositories/video_repository.dart';
import '../../../domain/blocs/play_video/details_of_video_bloc.dart';
import '../widgets/details_video/play_screen_display.dart';
import 'package:aparat/injection_container.dart';

//VideoDataProvider videoDataProvider = new VideoDataProvider();
//VideoRepository videoRepository = new VideoRepository(videoDataProvider);

class PlayScreenPage extends StatelessWidget {
  PlayScreenPage({Key? key, required this.uid}) : super(key: key);
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => dI<DetailsOfVideoBloc>(),
        child: PlayScreenDisplay(uid: uid),
      ),
    );
  }
}
