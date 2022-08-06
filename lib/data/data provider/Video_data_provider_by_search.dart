import 'dart:convert';

import 'package:aparat/data/entities/vide_detail/video_detail_entity.dart';
import 'package:dio/dio.dart';

import '../entities/video_search/video_entity.dart';

class VideoDataProvider {
  Future<List<VideoEntity>> getVideosBySearch(
      String search, int videosperpage) async {
    var rawVideoResponce = await Dio().get(
      'https://www.aparat.com/etc/api/videoBySearch/text/$search/perpage/10/curoffset/$videosperpage',
    );
    List<dynamic> list = json.decode(rawVideoResponce.data)['videobysearch'];
    final responsevideo = list
        .map<VideoEntity>(
            (JsonMapObject) => VideoEntity.fromJson(JsonMapObject))
        .toList();

    return responsevideo;
  }

  Future<VideoDetailEntity> getVideosDetails(String uid) async {
    var rawVideoDetailResponce = await Dio().get(
      'https://www.aparat.com/etc/api/video/videohash/$uid',
    );
    print("parisima " + rawVideoDetailResponce.data.toString());
    var videoDetailEntity = json.decode(rawVideoDetailResponce.data)['video'];
    print("parisima11"+uid.toString());
    print("parisima1" + videoDetailEntity.toString());
    final videoDetailsEntity = VideoDetailEntity.fromJson(videoDetailEntity);
    print("parisima 2" + videoDetailsEntity.toString());
    return videoDetailsEntity;
  }
}
