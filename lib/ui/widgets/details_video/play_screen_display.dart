import 'package:aparat/ui/widgets/details_video/video_player_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../domain/blocs/play_video/details_of_video_bloc.dart';
import 'info_comment_visit_video.dart';

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
        .add(GetVideoDetails(widget.uid));
    super.initState();

    _controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsOfVideoBloc, DetailsOfVideoState>(
      builder: (context, state) {
        if (state is DetailsOfVideoLoadedsuccessfully)
          return VideoDetails(
            controller: _controller,
            title: state.videoDetailModel.title,
            username: state.videoDetailModel.username,
            visit_cnt: state.videoDetailModel.visit_cnt,
            description: state.videoDetailModel.description,
          );
        else if (state is DetailsOfVideoInitial) {
          return Center(child: CircularProgressIndicator());
        }
        return Center(child: Text("nothing"));
      },
    );
  }
}

class VideoDetails extends StatelessWidget {
  const VideoDetails(
      {Key? key,
      required this.username,
      required this.title,
      required this.visit_cnt,
      required this.description,
      required this.controller})
      : super(key: key);

  final String title;
  final String? username;
  final int visit_cnt;
  final String? description;
  final VideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(title),
          Container(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(controller),
                  ControlsOverlay(controller: controller),
                  VideoProgressIndicator(controller, allowScrubbing: true),
                ],
              ),
            ),
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xfff5f5f5),
                  //  color: Colors.red
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InfoVideo(
                      infoName: username,
                      value: 'نام کاربری',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InfoVideo(
                      infoName: visit_cnt.toString(),
                      value: 'تعداد بازدید',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            description ?? "",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Text(
            "ویدئوهای مشابه",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
