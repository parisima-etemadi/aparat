import 'dart:convert';

import 'package:aparat/data/entities/vide_detail/video_detail_entity.dart';
import 'package:dio/dio.dart';

import '../../injection_container.dart';
import '../entities/video_search/video_entity.dart';

abstract class VideoDataProvider {
  Future<List<VideoEntity>> getVideosBySearch(String search, int videosperpage);
  Future<VideoDetailEntity> getVideosDetails(String uid);
  Future<List<VideoEntity>> getSimilarVideos(int categoryId);
}
