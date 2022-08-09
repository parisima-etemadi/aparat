import 'dart:convert';

import 'package:dio/dio.dart';

import '../entities/vide_detail/video_detail_entity.dart';
import '../entities/video_search/video_entity.dart';
import 'Video_data_provider.dart';

class VideoDataProviderImp implements VideoDataProvider {
  Dio dio;

  VideoDataProviderImp({required this.dio});

  Future<List<VideoEntity>> getVideosBySearch(
      String search, int videosperpage) async {
    var rawVideoResponce = await dio.get(
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
    var rawVideoDetailResponce = await dio.get(
      'https://www.aparat.com/etc/api/video/videohash/$uid',
    );
    var videoDetailEntity = json.decode(rawVideoDetailResponce.data)['video'];
    final videoDetailsEntity = VideoDetailEntity.fromJson(videoDetailEntity);
    return videoDetailsEntity;
  }

  Future<List<VideoEntity>> getSimilarVideos(int categoryId) async {
    var rawSimilarVideosResponce = await dio.get(
      'https://www.aparat.com/etc/api/categoryVideos/cat/$categoryId/perpage/10',
    );
    List<dynamic> list =
        json.decode(rawSimilarVideosResponce.data)['categoryvideos'];
    final responsevideo = list
        .map<VideoEntity>(
            (JsonMapObject) => VideoEntity.fromJson(JsonMapObject))
        .toList();
    return responsevideo;
  }
}
