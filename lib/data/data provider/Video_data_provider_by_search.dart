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
    var videoDetailEntity = json.decode(rawVideoDetailResponce.data)['video'];
    final videoDetailsEntity = VideoDetailEntity.fromJson(videoDetailEntity);
    return videoDetailsEntity;
  }
  Future<List<VideoEntity>> getSimilarVideos(int categoryId) async {
    var rawSimilarVideosResponce = await Dio().get(
      'https://www.aparat.com/etc/api/categoryVideos/cat/$categoryId/perpage/10',
    );
    List<dynamic> list = json.decode(rawSimilarVideosResponce.data)['categoryvideos'];
    final responsevideo = list
        .map<VideoEntity>(
            (JsonMapObject) => VideoEntity.fromJson(JsonMapObject))
        .toList();
    return responsevideo;
  }
}
