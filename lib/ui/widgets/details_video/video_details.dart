import 'package:aparat/ui/widgets/details_video/video_player_builder.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'info_comment_visit_video.dart';

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