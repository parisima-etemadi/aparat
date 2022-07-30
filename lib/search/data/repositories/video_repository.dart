import 'dart:convert';

import 'package:dio/dio.dart';

import '../../bloc/models/video_model.dart';
import '../data provider/Video_data_provider_by_search.dart';

class VideoRepository{

  final VideoDataProvider videoDataProvider;

  VideoRepository(this.videoDataProvider);


  Future<List<VideoModel>> getVideoBySearch(String search) async {
    final Response jsonVideoData =
    await videoDataProvider.getVideosBySearch(search);
    var responsevideo=json.decode(jsonVideoData.data)['videobysearch'].map<VideoModel>((JsonMapObject)=>VideoModel.fromJson(JsonMapObject)).toList();
    List<VideoModel> videos=responsevideo;

    return videos;


  }
}