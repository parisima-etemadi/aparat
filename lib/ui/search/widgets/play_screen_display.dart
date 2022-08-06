import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../domain/blocs/search/search_bloc.dart';

class PlayScreenDisplay extends StatefulWidget {
  const PlayScreenDisplay({
    Key? key,
    required this.uid
  }) : super(key: key);
final String uid;
  @override
  State<PlayScreenDisplay> createState() => _PlayScreenDisplayState();
}

class _PlayScreenDisplayState extends State<PlayScreenDisplay> {
  final asset='assets/bee.mp4';
 late VideoPlayerController _controller;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    BlocProvider.of<SearchBloc>(context)..add(GetVideoDetails(widget.uid));

    _controller=VideoPlayerController.asset(asset)..addListener(()=> setState(() {

    }))..initialize();
    
  }

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        print("state is play"+state.toString());

        if (state is GetDetailsSucceed)
          return VideoDetails(
            controller: _controller,
            title: state.videoDetailModel.title,
            username: state.videoDetailModel.username,
            visit_cnt: state.videoDetailModel.visit_cnt,
            description: state.videoDetailModel.description,
          );
        else
          return Text("nothing");
      },
    );
  }
}

class VideoDetails extends StatelessWidget {
  const VideoDetails({Key? key, required this.username, required this.title,required this.visit_cnt,required this.description,required this.controller}) : super(key: key);

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
                  _ControlsOverlay(controller: controller),
                  VideoProgressIndicator(controller, allowScrubbing: true),
                ],
              ),
            ),
          ),


          Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
               // padding: EdgeInsets.only(right: 10),
              //  width: MediaQuery.of(context).size.width,
              //  height: MediaQuery.of(context).size.height/4,
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
                    InfoVideo(infoName: username,value: 'نام کاربری',),
                    SizedBox(
                      height: 5,
                    ),
                    InfoVideo(infoName: visit_cnt.toString(),value: 'تعداد بازدید',),
                    SizedBox(
                      height: 5,
                    ),
             Row(children: [Expanded(
                 child: Text(
                   description  ?? "",
                   textAlign: TextAlign.right,
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 18,
                   ),
                 ),
             ),],)





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

  Widget buildVideoPlayer() {
    return AspectRatio(aspectRatio:controller.value.aspectRatio ,child: VideoPlayer(controller));
  }
}

class InfoVideo extends StatelessWidget {
  const InfoVideo({
    Key? key,
    required this.infoName,
    required this.value,
  }) : super(key: key);

  final String? infoName;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
      Text(
          '$infoName :' ,
        //textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
          Text(
            value ?? "",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),],),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration(milliseconds: 0),
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
            color: Colors.black26,
            child: const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 100.0,
                semanticLabel: 'Play',
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
        Align(
          alignment: Alignment.topLeft,
          child: PopupMenuButton<Duration>(
            initialValue: controller.value.captionOffset,
            tooltip: 'Caption Offset',
            onSelected: (Duration delay) {
              controller.setCaptionOffset(delay);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Duration>>[
                for (final Duration offsetDuration in _exampleCaptionOffsets)
                  PopupMenuItem<Duration>(
                    value: offsetDuration,
                    child: Text('${offsetDuration.inMilliseconds}ms'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed in _examplePlaybackRates)
                  PopupMenuItem<double>(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}