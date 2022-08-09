import 'package:aparat/domain/blocs/search/search_bloc.dart';
import 'package:aparat/ui/search/pages/search_result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/data provider/Video_data_provider_by_search.dart';
import '../../../data/repositories/video_repository.dart';
import '../../../domain/blocs/play_video/details_of_video_bloc.dart';
import '../widgets/play_screen_display.dart';
import 'package:aparat/injection_container.dart';

VideoDataProvider videoDataProvider = new VideoDataProvider();
VideoRepository videoRepository = new VideoRepository(videoDataProvider);

class PlayScreenPage extends StatelessWidget {
  PlayScreenPage({Key? key, required this.uid}) : super(key: key);
  final String uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<DetailsOfVideoBloc, DetailsOfVideoState>(
        listener: (context, state) {
          ("state DetailsOfVideoBloc " + state.toString());
          // TODO: implement listener
        },
        child: PlayScreenDisplay(uid: uid),
      ),
    );
  }
}