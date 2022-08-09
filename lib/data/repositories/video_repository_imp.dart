import 'package:aparat/data/mapper/mappers.dart';
import 'package:aparat/data/repositories/video_repository.dart';

import '../../domain/models/play_video/video_detail_model.dart';
import '../../domain/models/search/video_model.dart';
import '../data provider/Video_data_provider.dart';
import '../entities/vide_detail/video_detail_entity.dart';

class VideoRepositoryImp implements VideoRepository {
  final VideoDataProvider videoDataProvider;

  VideoRepositoryImp(this.videoDataProvider);

  Future<List<VideoModel>> getVideoBySearch(
      String search, int videoPerPage) async {
    print("getVideoBySearch called");
    final listVideos =
        await videoDataProvider.getVideosBySearch(search, videoPerPage);
    return listVideos.map((e) => e.mapTo()).toList();
  }

  Future<VideoDetailModel> getVideoDetailsBySearch(String uid) async {
    final videoDetails = await videoDataProvider.getVideosDetails(uid);
    return videoDetails.mapTo();
  }

  Future<List<VideoModel>> getSimilarVideos(
    int categoryID,
  ) async {
    final listVideos = await videoDataProvider.getSimilarVideos(categoryID);
    return listVideos.map((e) => e.mapTo()).toList();
  }
}
