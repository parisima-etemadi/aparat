import '../../domain/models/play_video/video_detail_model.dart';
import '../../domain/models/search/video_model.dart';
import '../entities/vide_detail/video_detail_entity.dart';
import '../entities/video_search/video_entity.dart';

extension VideoDetailMapper on VideoDetailEntity {
  VideoDetailModel mapTo() {
    return VideoDetailModel(
        title: title,
        username: username,
        visit_cnt: visit_cnt,
        description: description,
        cat_id: cat_id);
  }
}

extension VideoMapper on VideoEntity {
  VideoModel mapTo() {
    return VideoModel(small_poster: small_poster, uid: uid);
  }
}
