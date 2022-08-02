import 'package:flutter/material.dart';

import '../../../domain/models/search/video_model.dart';
class VideoItemSearchResult extends StatelessWidget {
  const VideoItemSearchResult({Key? key,required this.index,required this.videoList, required this.onTap,}) : super(key: key);
  final int index;
  final List<VideoModel> videoList;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(

        child: Image.network(videoList[index].small_poster),

      ),
    );
  }
}
