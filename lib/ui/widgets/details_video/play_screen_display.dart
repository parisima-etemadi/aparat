import 'package:aparat/ui/widgets/details_video/video_details.dart';
import 'package:aparat/ui/widgets/details_video/video_player_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../domain/blocs/play_video/details_of_video_bloc.dart';


class PlayScreenDisplay extends StatefulWidget {
  const PlayScreenDisplay({Key? key, required this.uid}) : super(key: key);
  final String uid;
  @override

  State<PlayScreenDisplay> createState() => _PlayScreenDisplayState();
}

class _PlayScreenDisplayState extends State<PlayScreenDisplay> {
  final asset = 'assets/bee.mp4';
  late VideoPlayerController _controller;
  @override
  void initState() {
    BlocProvider.of<DetailsOfVideoBloc>(context)
        .add(DetailsOfVideoEvent.GetVideoDetails( uId:widget.uid));
    super.initState();

    _controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsOfVideoBloc, DetailsOfVideoState>(
       builder: (context, state)=> state.when(initial:() =>const Center(child: CircularProgressIndicator()), Loaded:(videoDetailModel) =>
          VideoDetails(
            controller: _controller,
            title: videoDetailModel.title,
            username: videoDetailModel.username,
            visit_cnt: videoDetailModel.visit_cnt,
            description: videoDetailModel.description,
          ))
      //
      // {
      //   if (state is DetailsOfVideoLoadedsuccessfully)
      //     return VideoDetails(
      //       controller: _controller,
      //       title: state.videoDetailModel.title,
      //       username: state.videoDetailModel.username,
      //       visit_cnt: state.videoDetailModel.visit_cnt,
      //       description: state.videoDetailModel.description,
      //     );
      //   else if (state is DetailsOfVideoInitial) {
      //     return Center(child: CircularProgressIndicator());
      //   }
      //   return Center(child: Text("nothing"));
      // },
    );
  }
}


