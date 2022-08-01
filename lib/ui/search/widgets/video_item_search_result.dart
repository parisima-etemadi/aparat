import 'package:flutter/material.dart';

import '../../../domain/models/search/video_model.dart';
class VideoItemSearchResult extends StatelessWidget {
  const VideoItemSearchResult({Key? key,required this.index,required this.videoList}) : super(key: key);
  final int index;
  final List<VideoModel> videoList;

  @override
  Widget build(BuildContext context) {
    return Card(

      child: Column(
        children: [
          Image.network(videoList[index].small_poster),
          Container(alignment: Alignment.topCenter,color: Colors.amber,child: Text("data",textAlign: TextAlign.center,))
        ],
      ),

    );
  }
}
