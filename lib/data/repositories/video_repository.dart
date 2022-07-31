

import 'package:aparat/data/entities/video_entity.dart';

import '../../domain/models/search/video_model.dart';
import '../data provider/Video_data_provider_by_search.dart';

class VideoRepository{




  final VideoDataProvider videoDataProvider;

  VideoRepository(this.videoDataProvider);


  Future<List<VideoModel>> getVideoBySearch(String search,int videoPerPage) async {

   final listVideos=await videoDataProvider.getVideosBySearch(search,videoPerPage);
    return listVideos.map((e) => e.mapTo()).toList();

  }


}

extension VideoMapper on VideoEntity {
  VideoModel mapTo() {
    return VideoModel(small_poster:small_poster);
  }


}

