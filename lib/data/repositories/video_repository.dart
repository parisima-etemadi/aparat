import 'package:aparat/data/entities/vide_detail/video_detail_entity.dart';
import 'package:aparat/data/entities/video_search/video_entity.dart';

import '../../domain/models/play_video/video_detail_model.dart';
import '../../domain/models/search/video_model.dart';
import '../data provider/Video_data_provider_by_search.dart';

class VideoRepository {
  final VideoDataProvider videoDataProvider;

  VideoRepository(this.videoDataProvider);

  Future<List<VideoModel>> getVideoBySearch(
      String search, int videoPerPage) async {
    final listVideos =
        await videoDataProvider.getVideosBySearch(search, videoPerPage);
    return listVideos.map((e) => e.mapTo()).toList();
  }

  Future<VideoDetailModel> getVideoDetailsBySearch(String uid) async {
    print(21);
    final videoDetails = await videoDataProvider.getVideosDetails(uid);
    print(23);
    return videoDetails.mapTo();
  }
}

extension VideoDetailMapper on VideoDetailEntity {
  VideoDetailModel mapTo() {
    return VideoDetailModel(
        title:title,
        username: username
         ,visit_cnt: visit_cnt,description: description,cat_id: cat_id
        );
  }
}

extension VideoMapper on VideoEntity {
  VideoModel mapTo() {
    return VideoModel(small_poster: small_poster, uid: uid);
  }
}
