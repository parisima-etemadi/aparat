import 'package:aparat/data/entities/vide_detail/video_detail_entity.dart';
import 'package:aparat/data/entities/video_search/video_entity.dart';

import '../../domain/models/play_video/video_detail_model.dart';
import '../../domain/models/search/video_model.dart';
import '../data provider/Video_data_provider.dart';

abstract class VideoRepository {
  Future<List<VideoModel>> getVideoBySearch(String search, int videoPerPage);
  Future<VideoDetailModel> getVideoDetailsBySearch(String uid);
  Future<List<VideoModel>> getSimilarVideos(
    int categoryID,
  );
}
